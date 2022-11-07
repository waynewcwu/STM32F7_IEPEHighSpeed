//#include "Calculate_statistic.h"
#include "main.h"
#include "cmsis_os.h"

extern uint32_t fftSize;
extern float speedans;
Sv statistic_value;
//Wayne-- 20220412 Adj.CosineSimilarity
uint16_t ansAvgCount;
float ans, ans_temp, ans_temp_sum;

//version date : 2022/03/01 --Wayne


//2021/0201/George
//TODO: Reset All parameter
void Initial_AllStatisticValue()
{
	statistic_value.Statistic_max = 0;
	statistic_value.Statistic_min = 0;
	statistic_value.Statistic_var = 0;
	statistic_value.Statistic_rms = 0;
	statistic_value.Statistic_mean = 0;
	statistic_value.Statistic_std = 0;
	statistic_value.Statistic_crestFactor = 0;
	statistic_value.Statistic_kurtosis = 0;
	statistic_value.Statistic_skewness = 0;
	statistic_value.Statistic_FreqOvall = 0;
	statistic_value.Statistic_SpeedOvall = 0;



	statistic_value.Statistic_max_Temp = 0;
	statistic_value.Statistic_min_Temp = 0;
	statistic_value.Statistic_var_Temp = 0;
	statistic_value.Statistic_rms_Temp = 0;
	statistic_value.Statistic_mean_Temp = 0;
	statistic_value.Statistic_std_Temp = 0;
	statistic_value.Statistic_crestFactor_Temp = 0;
	statistic_value.Statistic_kurtosis_Temp = 0;
	statistic_value.Statistic_skewness_Temp = 0;
	statistic_value.Statistic_FreqOvall_Temp = 0;
	statistic_value.Statistic_SpeedOvall_Temp = 0;

}






/*
 *
 * Calculate Skewness & kurtosis
 *
 * */
float CalcluateMean(float *x, int n)
{
	float sum = 0;

	for (int i = 0; i < n; i++)
		sum += x[i];

	return sum / n;
}

float CalcluateMoment(float *x, int n, int m)
{
	float mean = CalcluateMean(x, n), sum = 0;

	for (int i = 0; i < n; i++)
		sum += pow(x[i] - mean, m);

	return sum / n;
}

float CalcluateVariance(float *x, int n)
{
	float mean = CalcluateMean(x, n), sumSq = 0;

	for (int i = 0; i < n; i++)
	{
		float delta = x[i] - mean;

		sumSq += delta * delta;
	}

	return sumSq / (n - 1);
}
float CalcluateStandardDeviation(float *x, int n)
{
	return sqrt(CalcluateVariance(x, n));
}

float Calculate_skewness(float *x, int n)
{
	// NIST definition of adjusted Fisher-Pearson
	// coefficient of skewness
	float m3 = CalcluateMoment(x, n, 3);
	float sx = CalcluateStandardDeviation(x, n);
	int n1 = n - 1;
	float Skewness = (sqrt(n * n1) / n1) * m3 / pow(sx, 3);

	return Skewness;
}
float Calculate_kurtosis(float *x, int n)
{
	float m2 = CalcluateMoment(x, n, 2);
	float m4 = CalcluateMoment(x, n, 4);


	float Kurtosis = m4 / (m2 * m2) - 3.0;
    return Kurtosis;
}

void Calculate_FreqBandRMS(float *x,  FreqMaxMin * FreqMaxMin , int8_t freq_index)
{

	if(FreqMaxMin->Max != 0)
	{
		float * velocityBuffer;
		velocityBuffer = pvPortMalloc(4096 * sizeof(float));

		int dataRate = 15000;
		float frequencyResolution = dataRate/(float)fftSize;
		float accelerationRMS = 0;

		float parseRangeMax = FreqMaxMin->Max / frequencyResolution;
		float parseRangeMin = FreqMaxMin->Min / frequencyResolution;
		float ParsevalFftPower = 0;
		float velocityPower = 0;
		float velocityRMS = 0;

		for(int i = (int)parseRangeMin; i<(int)parseRangeMax; i++)
		{
			ParsevalFftPower += x[i] * x[i];
		}

		//2021/03/09/George/Velocity target RMS
		for(int i = (int)parseRangeMin; i<(int)parseRangeMax; i++)
		{

			if(i ==0)
			{
				velocityBuffer[i] = x[i];
			}
			else
			{
				velocityBuffer[i] = (x[i] * 9807) / (2 * 3.1415926 * frequencyResolution * i);

			}
			velocityPower += velocityBuffer[i] * velocityBuffer[i];
		}

		accelerationRMS = sqrt(ParsevalFftPower * 2)/4096;

		//2021/0309/George/ Velocity RMS ans
		velocityRMS = sqrt(velocityPower * 2)/4096;

		statistic_value.Statistic_FreqPeak[freq_index] = accelerationRMS;
		statistic_value.Statistic_VeloccityFreqPeak[freq_index] = velocityRMS;

		vPortFree(velocityBuffer);
	}
}

void Calculate_FreqOverAll(float *x, int n)
{
	//2021/0209/George
	//Acceleration sin(2πft) integral is Velocity cos(2πft)/2πft
	//Velocity cos(2πft)/2πft integral is cos(2πft)/(2πft)^2
	float ParsevalFftPower = 0;
	float AccelerationRMS = 0;
	float velocityPower = 0;
	float displacementPower = 0;
	float displacementP2p = 0;
	uint32_t displacement_index = 0;

	for(int i = 0; i<n/2; i++)
	{
		ParsevalFftPower += x[i] * x[i];
	}

	int fftSize = 4096;


	/*
	 * 2021/0203/George
	 * Compute Speed Ovall
	 * TODO: Improve compute fftSize to fftSize/2
	 * */
	float32_t sampleCount = 4096;
	float32_t samplingRate = 15000;
	float32_t frequencyScale = samplingRate/sampleCount;
	float SpeedparsevalFftPower = 0;

	//2021/0203/George
	//Calculate Velocity power
	for(uint16_t i = 0; i < fftSize / 2; i++)
	{
			if(i < fftSize/2)
			{
				if(i ==0)
				{
					x[i] = x[i];
				}
				else
				{
					x[i] = (x[i] * 9807) / (2 * 3.1415926 * frequencyScale * i);

				}
				velocityPower += x[i] * x[i];

			}

	}

	//2021/0203/George
	//Calculate displacement power
	for(uint16_t i = 0; i < fftSize / 2; i++)
	{
			if(i < fftSize/2)
			{
				if(i ==0)
				{
					x[i] = x[i];
				}
				else
				{
					x[i] = (x[i]) / (2 * 3.1415926 * frequencyScale * i);

				}
				displacementPower += x[i] * x[i];

			}

	}

	//2021/0203/George2
	//TODO:calculate
	arm_max_f32(x, 2048, &displacementP2p, &displacement_index);


	//2021/0203/George
	//TODO: improve formula from sqrt(ParsevalFftPower)/n to sqrt(2 * ParsevalFftPower)/n;
	AccelerationRMS = sqrt(2 * ParsevalFftPower)/n;

	//2021/0203/George
	//TODO: improve formula from sqrt(velocityPower)/n to sqrt(2 * velocityPower)/n;
	statistic_value.Statistic_FreqOvall = AccelerationRMS; // unit : g
	statistic_value.Statistic_SpeedOvall = sqrt(2 * velocityPower)/n; // unit : mm/s
	statistic_value.Statistic_DisplacementOvall = 1000 * sqrt(2 * displacementPower)/n; // unit : um
	return AccelerationRMS;
}

//Wayne-- 20220419 Adj.CosineSimilarity
//void Calculate_CosineSimilarity(void)
float  Calculate_CosineSimilarity(float *Signal1, float *Signal2, uint16_t datasize)
{

	//---Reduce Signal1 and Signal2 Avg. valve for Adj. CosineSimilarity---

	float Signal1_Amp[datasize], Signal2_Amp[datasize], Signal1_fq[datasize], Signal2_fq[datasize];
	//-------TopCount Setting-----------------
	uint8_t TopCount=100;//TopCount Setting
	//-------TopCount Setting-----------------
	float Avg_Valve, Avg_Valve_f, RdAvg_Sum, RdAvg_Sum_f;
	float Signal1_Amp_Top[TopCount], Signal2_Amp_Top[TopCount], Signal1_fq_Top[TopCount], Signal2_fq_Top[TopCount];


	for( uint16_t i = 0; i <  datasize; i++)
	{
		Signal1_Amp[i] = Signal1[i];
		Signal2_Amp[i] = Signal2[i];
		//---Create Frequency index----
		//fQ scale = 15000/4096 =3.66Hz
		//0:0, 1:1*fQ scale, 2:2*fQ scale
		Signal1_fq[i] = i*3.66/10;
		Signal2_fq[i] = i*3.66/10;
	}

	//Sort FFT Top to down
	 quick_sort(Signal1_Amp, Signal1_fq, 0, datasize-1);
	 quick_sort(Signal2_Amp, Signal2_fq, 0, datasize-1);

	 //Get Amp Top valve & Computing Avg.
	 for(uint16_t i = 0; i < TopCount; i++ )//Top=100
	 {
		 Signal1_Amp_Top[i] = Signal1_Amp[i];
		 Signal2_Amp_Top[i] = Signal2_Amp[i];
		 Signal1_fq_Top[i]= Signal1_fq[i];
		 Signal2_fq_Top[i]= Signal2_fq[i];
		 RdAvg_Sum += (Signal1_Amp_Top[i] + Signal2_Amp_Top[i]);
		 RdAvg_Sum_f += (Signal1_fq_Top[i] + Signal2_fq_Top[i]);
	 }
	 Avg_Valve = RdAvg_Sum/(TopCount*2);
	 Avg_Valve_f = RdAvg_Sum_f/(TopCount*2);

	//reduce Avg. valve for Adj. CosineSimilarity
	for( uint16_t i = 0; i <  TopCount; i++)
	{
		//---Reduce Signal1 and Signal2 Avg. valve
		Signal1_Amp_Top[i] = Signal1_Amp_Top[i] - Avg_Valve;
		Signal2_Amp_Top[i] = Signal2_Amp_Top[i] - Avg_Valve;
		//---Reduce Signal1 and Signal2 freq. Avg. valve
		Signal1_fq_Top[i] = Signal1_fq_Top[i] - Avg_Valve_f;
		Signal2_fq_Top[i] = Signal2_fq_Top[i] - Avg_Valve_f;
	}
	//
	quick_sort_ascending(Signal1_fq_Top, Signal1_Amp_Top, 0, TopCount-1);
	quick_sort_ascending(Signal2_fq_Top, Signal2_Amp_Top, 0, TopCount-1);


//    //sort FFT Top to send out
//    for(uint16_t i = 0; i < TopCount; i++ )
//    {
//    	 statistic_value.Statistic_FFTDataTop[i]=Signal2_Amp_Top[i]+Avg_Valve*1000000;
//    	 statistic_value.Statistic_FFTDataTopIndex[i]=round((Signal2_fq_Top[i]+Avg_Valve_f)*10/3.66);
//    }



    //---Adj. CosineSimilarity---
        float data1sumsqrt = 0;
        float data2sumsqrt = 0;
        float datasum = 0;
        float datasumsqrt = 0;
//        float ans = 0;


        //---Adj. CosineSimilarity for Top------------------------------------
    for( uint16_t i = 0; i <  TopCount; i++)
        {
    		datasum = (Signal1_Amp_Top[i] * Signal2_Amp_Top[i]) + (Signal1_fq_Top[i] * Signal2_fq_Top[i]);
            data1sumsqrt = (Signal1_Amp_Top[i] * Signal1_Amp_Top[i]) + (Signal1_fq_Top[i] * Signal1_fq_Top[i]);
            data2sumsqrt = (Signal2_Amp_Top[i] * Signal2_Amp_Top[i]) + (Signal2_fq_Top[i] * Signal2_fq_Top[i]);
            datasumsqrt = sqrt(data1sumsqrt) * sqrt(data2sumsqrt);
            if(datasum / datasumsqrt < 0)
            	ans_temp += 0;
            else
            	ans_temp += datasum / datasumsqrt;
    	}
        ans_temp = ans_temp / TopCount;


//==========================================================================================================================
//    //---Adj. CosineSimilarity for Top------------------------------------
//    for( uint16_t i = 0; i <  TopCount; i++)
//        {
//    		if((Signal1_Amp_Top[i] * Signal2_Amp_Top[i])+(Signal1_fq_Top[i] * Signal2_fq_Top[i])<0)
//    			datasum += 0;
//    		else
//    			datasum += (Signal1_Amp_Top[i] * Signal2_Amp_Top[i]) + (Signal1_fq_Top[i] * Signal2_fq_Top[i]);
//
//            data1sumsqrt += (Signal1_Amp_Top[i] * Signal1_Amp_Top[i]) + (Signal1_fq_Top[i] * Signal1_fq_Top[i]);
//            data2sumsqrt += (Signal2_Amp_Top[i] * Signal2_Amp_Top[i]) + (Signal2_fq_Top[i] * Signal2_fq_Top[i]);
//    	}
//
////    //---Adj. CosineSimilarity--------------------------------------------------;
////    for( uint16_t i = 0; i <  datasize; i++)
////    {
////    	datasum += (Signal1_Amp[i] * Signal2_Amp[i])+(Signal1_fq[i] * Signal2_fq[i]);
////    	data1sumsqrt += (Signal1_Amp[i] * Signal1_Amp[i]) + (Signal1_fq[i] * Signal1_fq[i]);
////    	data2sumsqrt += (Signal2_Amp[i] * Signal2_Amp[i]) + (Signal2_fq[i] * Signal2_fq[i]);
////	}
//    //--------------------------------------------------------------------------------
//
//    datasumsqrt = sqrt(data1sumsqrt) * sqrt(data2sumsqrt);
//
////    ans = datasum / datasumsqrt;
//
//    ans_temp = datasum / datasumsqrt;
//==========================================================================================================================

    if(ansAvgCount  < 770)//avg. the CosineSimilarity valve at 5min to update
//    if(ansAvgCount  < 10)//avg. the CosineSimilarity valve at 3sec to update
    {
    	ansAvgCount++;
    	ans_temp_sum += ans_temp;
    }
    else
	{
    	ans = ans_temp_sum/ansAvgCount;
    	ans_temp_sum = 0;
    	ansAvgCount = 0;

	}
    return ans;

}

//Wayne-- 20220301
void quick_sort(float arr[], float arr2[], int first_index, int last_index) {
  // 宣告索引變數
  int pivotIndex, index_a, index_b;
  float temp;
  if (first_index < last_index) {
    // 以第一個元素作為基準
    pivotIndex = last_index;
    index_a = first_index;
    index_b = last_index;

    // 以遞減方式排序
    while (index_a < index_b) {
      //while (arr[index_a] >= arr[pivotIndex] && index_a < last_index) {
    	while (arr[index_a] > arr[pivotIndex] && index_a < last_index) {
        index_a++;
      }
      //while (arr[index_b] < arr[pivotIndex] && index_b > index_a) {
      while (arr[index_b] <= arr[pivotIndex]) {
//    	  if (index_b == 0)
//    	   break;

        index_b--;
      }

      if (index_a < index_b) {
        // 交換元素
        temp = arr[index_a];
        arr[index_a] = arr[index_b];
        arr[index_b] = temp;
        //swap arr2
        temp = arr2[index_a];
        arr2[index_a] = arr2[index_b];
        arr2[index_b] = temp;
      }
    }

    // 交換基準元素與 index_a 元素
    temp = arr[pivotIndex];
    arr[pivotIndex] = arr[index_a];
    arr[index_a] = temp;
    //swap arr2
    temp = arr2[pivotIndex];
    arr2[pivotIndex] = arr2[index_a];
    arr2[index_a] = temp;

    // 遞迴呼叫快速排序法函數
    quick_sort(arr, arr2, first_index, index_a - 1);
    quick_sort(arr, arr2, index_a + 1, last_index);
  }
}
//Wayne-- 20220419 遞增排序
void quick_sort_ascending(float arr[], float arr2[], int first_index, int last_index) {
  // 宣告索引變數
  int pivotIndex , index_a, index_b;
  float temp;
  if (first_index < last_index) {
    // 以第一個元素作為基準
    pivotIndex = first_index;
    index_a = first_index;
    index_b = last_index;

    // 以遞增方式排序
    while (index_a < index_b) {
      while (arr[index_a] <= arr[pivotIndex] && index_a < last_index) {
        index_a++;
      }
      while (arr[index_b] > arr[pivotIndex]) {
        index_b--;
      }

      if (index_a < index_b) {
        // 交換元素
        temp = arr[index_a];
        arr[index_a] = arr[index_b];
        arr[index_b] = temp;
        //swap arr2
        temp = arr2[index_a];
        arr2[index_a] = arr2[index_b];
        arr2[index_b] = temp;
      }
    }

    // 交換基準元素與 index_b 元素
    temp = arr[pivotIndex];
    arr[pivotIndex] = arr[index_b];
    arr[index_b] = temp;
    //swap arr2
    temp = arr2[pivotIndex];
    arr2[pivotIndex] = arr2[index_b];
    arr2[index_b] = temp;

    // 遞迴呼叫快速排序法函數
    quick_sort_ascending(arr, arr2, first_index, index_b - 1);
    quick_sort_ascending(arr, arr2, index_b + 1, last_index);
  }
}

