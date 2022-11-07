/*
 * Calculate_statistic.h
 *
 *  Created on: 2022年7月4日
 *      Author: USER
 */

#ifndef INC_CALCULATE_STATISTIC_H_
#define INC_CALCULATE_STATISTIC_H_



#endif /* INC_CALCULATE_STATISTIC_H_ */


#include "arm_math.h"
#include <stdio.h>
#include <math.h>
#include <stdlib.h>


//version date : 2022/03/01 --Wayne
typedef struct FreqMaxMinInstance
{
    int Max;
    int Min;
}FreqMaxMin;

float Calculate_max(float *data);
void Calculate_FreqBandRMS(float *data,  FreqMaxMin * FreqMaxMin , int8_t freq_index);
float Calculate_skewness(float *data, int n);
float Calculate_kurtosis(float *data, int n);
float Calculate_rms(float *data, int n);
void Calculate_FreqOverAll(float *data, int n);
float Calculate_SpeedOverAll(float *x, int n);
void Initial_AllStatisticValue();
//2022/04/14 --Wayne
//void Calculate_CosineSimilarity(void);
float Calculate_CosineSimilarity(float *Signal1, float *Signal2, uint16_t datasize);
void quick_sort(float arr[], float arr2[], int first_index, int last_index);
void quick_sort_ascending(float arr[], float arr2[], int first_index, int last_index);
typedef struct Statistic_value
{
	float Statistic_max;
	float Statistic_min;
	float Statistic_var;
	float Statistic_rms;
	float Statistic_mean;
	float Statistic_std;
	float Statistic_p2p;
	float Statistic_crestFactor;
	float Statistic_kurtosis;
	float Statistic_skewness;
	float Statistic_FreqOvall;
	float Statistic_SpeedOvall;
	float Statistic_DisplacementOvall;
	float Statistic_Displacementp2p;
	float Statistic_FreqPeak[20];
	float Statistic_VeloccityFreqPeak[20];
	/*TODO:calculating the Calculate_CosineSimilarity with sample wave
	20220301--by Wayne*/
	float Statistic_CosSimilarity;
	float Statistic_FFTDataTop[100];
	float Statistic_FFTDataTopIndex[100];

	float Statistic_max_Temp;
	float Statistic_min_Temp;
	float Statistic_var_Temp;
	float Statistic_rms_Temp;
	float Statistic_mean_Temp;
	float Statistic_std_Temp;
	float Statistic_p2p_Temp;
	float Statistic_crestFactor_Temp;
	float Statistic_kurtosis_Temp;
	float Statistic_skewness_Temp;
	float Statistic_FreqOvall_Temp;
	float Statistic_SpeedOvall_Temp;
	float Statistic_DisplacementOvall_Temp;
}Sv;

typedef struct Freq_settingValue
{
	int freq1;
	int freq2;
	int freq3;
	int freq4;
	int freq5;
	int freq6;
	int freq7;
	int freq8;
	int freq9;
	int freq10;
	int freq11;
	int freq12;
	int freq13;
	int freq14;

}freq_settingValue;

typedef struct FreqSettingValueList
{
    FreqMaxMin range1;
    FreqMaxMin range2;
    FreqMaxMin range3;
}FreqSettingValueList;

extern FreqSettingValueList freqSettingValueList;
extern Sv statistic_value;
//extern freq_settingValue freq_settingValue;
