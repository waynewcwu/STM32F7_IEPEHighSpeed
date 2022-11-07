/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "string.h"
#include "math.h"
//#include "BLE_USART.h"
#include <stdint.h>
#include "printf.h"
//#include "Calculate_statistic.h"
#include "Delay.h"
#include <stdbool.h>
/* Private typedef -----------------------------------------------------------*/
extern USART_BLE USARTBLE;	//Wayne0905
/*TODO:transmit rawdata by BLE
	20220317--by Wayne*/
extern float BLE_RawdatatoINT[4096];
int Rawdatasize, Topdatasize, rawloop, in;
/* Private variables ---------------------------------------------------------*/


void BLE_USART(UART_HandleTypeDef *huart, Sv *sendpData, IWDG_HandleTypeDef *hiwdg )
{

	if( USARTBLE.IAPflag == 1)
	{
		USARTBLE.sendflag =0;
		TM_DelayMillis(1000);
		NVIC_SystemReset();

	}
	if(USARTBLE.sendflag ==1)
	{

		//2021/0201/George
		//TODO : BLE transmission parameter number3 from var to min and
		snprintf_(USARTBLE.buffer, 128 , "%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f", sendpData->Statistic_FreqOvall*1000,sendpData->Statistic_SpeedOvall*1000,
					sendpData->Statistic_Displacementp2p*1000,sendpData->Statistic_max*1000,sendpData->Statistic_p2p*1000,
					sendpData->Statistic_var*1000,sendpData->Statistic_mean*1000,sendpData->Statistic_crestFactor*1000,
					sendpData->Statistic_kurtosis*1000, sendpData->Statistic_skewness*1000,
					statistic_value.Statistic_FreqPeak[0]*1000,statistic_value.Statistic_FreqPeak[1]*1000,statistic_value.Statistic_FreqPeak[2]*1000,
					//statistic_value.Statistic_VeloccityFreqPeak[0]*1000,statistic_value.Statistic_VeloccityFreqPeak[1]*1000,statistic_value.Statistic_VeloccityFreqPeak[2]*1000);
					statistic_value.Statistic_CosSimilarity*100);
		//snprintf_(USARTBLE.buffer, 6 , "%.4f", statistic_value.Statistic_CosSimilarity );

		USARTBLE.bufferSize = min_(APP_BUFFER_SIZE, strlen(USARTBLE.buffer));
		while(HAL_UART_Transmit_DMA(huart, USARTBLE.buffer, USARTBLE.bufferSize)!=HAL_OK);

//		/*TODO:transmit Top FFT data by BLE
//			20220422--by Wayne*/
//		Topdatasize = sizeof(statistic_value.Statistic_FFTDataTop)/sizeof(float);
//		char TopDStartHead[]="A1";
//		char TopDEndHead[]="A2";
//		for(uint32_t i = 0; i < Topdatasize ;i+=25)
//		{
//			HAL_GPIO_WritePin(GPIOD, GPIO_PIN_12|GPIO_PIN_13, GPIO_PIN_RESET);
//
//			while(USARTBLE.sendRawdataflag == 0);//wait transmit time delay
//
//			HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_12);
//
//			memset( USARTBLE.buffer, 0, strlen(USARTBLE.buffer) ); //clear send data
//			memset( USARTBLE.buffer_temp, 0, strlen(USARTBLE.buffer_temp) ); //clear send data
//			snprintf_(USARTBLE.buffer_temp, 244 ,"%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f",
//						statistic_value.Statistic_FFTDataTop[i],statistic_value.Statistic_FFTDataTop[i+1],statistic_value.Statistic_FFTDataTop[i+2],statistic_value.Statistic_FFTDataTop[i+3],statistic_value.Statistic_FFTDataTop[i+4],statistic_value.Statistic_FFTDataTop[i+5],statistic_value.Statistic_FFTDataTop[i+6],statistic_value.Statistic_FFTDataTop[i+7],
//						statistic_value.Statistic_FFTDataTop[i+8],statistic_value.Statistic_FFTDataTop[i+9],statistic_value.Statistic_FFTDataTop[i+10],statistic_value.Statistic_FFTDataTop[i+11],statistic_value.Statistic_FFTDataTop[i+12],statistic_value.Statistic_FFTDataTop[i+13],statistic_value.Statistic_FFTDataTop[i+14],statistic_value.Statistic_FFTDataTop[i+15],
//						statistic_value.Statistic_FFTDataTop[i+16],statistic_value.Statistic_FFTDataTop[i+17],statistic_value.Statistic_FFTDataTop[i+18],statistic_value.Statistic_FFTDataTop[i+19],statistic_value.Statistic_FFTDataTop[i+20],statistic_value.Statistic_FFTDataTop[i+21],statistic_value.Statistic_FFTDataTop[i+22],statistic_value.Statistic_FFTDataTop[i+23],
//						statistic_value.Statistic_FFTDataTop[i+24]
//						);
//			if(i==0)
//				snprintf_(USARTBLE.buffer, 244 ,"%s,%s,", TopDStartHead,USARTBLE.buffer_temp);
//			else if(i==(Topdatasize-25))
//				snprintf_(USARTBLE.buffer, 244 ,"%s,%s,", USARTBLE.buffer_temp, TopDEndHead);
//			else
//				snprintf_(USARTBLE.buffer, 244 ,"%s", USARTBLE.buffer_temp);
//
//			USARTBLE.bufferSize = min_(APP_BUFFER_SIZE, strlen(USARTBLE.buffer));
//			while(HAL_UART_Transmit_DMA(huart, USARTBLE.buffer, USARTBLE.bufferSize)!=HAL_OK);
//			HAL_IWDG_Refresh(hiwdg);
//			USARTBLE.sendRawdataflag = 0 ;
//		}
//		/*TODO:transmit Top FFT data index by BLE
//			20220422--by Wayne*/
//		Topdatasize = sizeof(statistic_value.Statistic_FFTDataTopIndex)/sizeof(float);
//		char TopIStartHead[]="B1";
//		char TopIEndHead[]="B2";
//		for(uint32_t i = 0; i < Topdatasize ;i+=25)
//		{
//			HAL_GPIO_WritePin(GPIOD, GPIO_PIN_12|GPIO_PIN_13, GPIO_PIN_RESET);
//
//			while(USARTBLE.sendRawdataflag == 0);//wait transmit time delay
//
//			HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_12);
//
//			memset( USARTBLE.buffer, 0, strlen(USARTBLE.buffer) ); //clear send data
//			memset( USARTBLE.buffer_temp, 0, strlen(USARTBLE.buffer_temp) ); //clear send data
//			snprintf_(USARTBLE.buffer_temp, 244 ,"%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f",
//						statistic_value.Statistic_FFTDataTopIndex[i],statistic_value.Statistic_FFTDataTopIndex[i+1],statistic_value.Statistic_FFTDataTopIndex[i+2],statistic_value.Statistic_FFTDataTopIndex[i+3],statistic_value.Statistic_FFTDataTopIndex[i+4],statistic_value.Statistic_FFTDataTopIndex[i+5],statistic_value.Statistic_FFTDataTopIndex[i+6],statistic_value.Statistic_FFTDataTopIndex[i+7],
//						statistic_value.Statistic_FFTDataTopIndex[i+8],statistic_value.Statistic_FFTDataTopIndex[i+9],statistic_value.Statistic_FFTDataTopIndex[i+10],statistic_value.Statistic_FFTDataTopIndex[i+11],statistic_value.Statistic_FFTDataTopIndex[i+12],statistic_value.Statistic_FFTDataTopIndex[i+13],statistic_value.Statistic_FFTDataTopIndex[i+14],statistic_value.Statistic_FFTDataTopIndex[i+15],
//						statistic_value.Statistic_FFTDataTopIndex[i+16],statistic_value.Statistic_FFTDataTopIndex[i+17],statistic_value.Statistic_FFTDataTopIndex[i+18],statistic_value.Statistic_FFTDataTopIndex[i+19],statistic_value.Statistic_FFTDataTopIndex[i+20],statistic_value.Statistic_FFTDataTopIndex[i+21],statistic_value.Statistic_FFTDataTopIndex[i+22],statistic_value.Statistic_FFTDataTopIndex[i+23],
//						statistic_value.Statistic_FFTDataTopIndex[i+24]
//						);
//			if(i==0)
//				snprintf_(USARTBLE.buffer, 244 ,"%s,%s,", TopIStartHead,USARTBLE.buffer_temp);
//			else if(i==(Topdatasize-25))
//				snprintf_(USARTBLE.buffer, 244 ,"%s,%s,", USARTBLE.buffer_temp, TopIEndHead);
//			else
//				snprintf_(USARTBLE.buffer, 244 ,"%s", USARTBLE.buffer_temp);
//
//			USARTBLE.bufferSize = min_(APP_BUFFER_SIZE, strlen(USARTBLE.buffer));
//			while(HAL_UART_Transmit_DMA(huart, USARTBLE.buffer, USARTBLE.bufferSize)!=HAL_OK);
//			HAL_IWDG_Refresh(hiwdg);
//			USARTBLE.sendRawdataflag = 0 ;
//		}
//
//        /*TODO:transmit rawdata by BLE
//			20220301--by Wayne*/
//		Rawdatasize = sizeof(BLE_RawdatatoINT)/sizeof(float);
//		rawloop= 0;
//		in=0;
//		char StartHead[]="C1";
//		char EndHead[]="C2";
//		for(uint32_t i = 0; i < Rawdatasize ;i+=32)
////		for(uint32_t i = 0; i < 1024 ;i+=32)
//		{
//
//			HAL_GPIO_WritePin(GPIOD, GPIO_PIN_12|GPIO_PIN_13, GPIO_PIN_RESET);
//
//			while(USARTBLE.sendRawdataflag == 0);//wait transmit time delay
//
//			HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_12);
//
//			memset( USARTBLE.buffer, 0, strlen(USARTBLE.buffer) ); //clear send data
//			memset( USARTBLE.buffer_temp, 0, strlen(USARTBLE.buffer_temp) ); //clear send data
//			snprintf_(USARTBLE.buffer_temp, 244 ,"%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,%.0f,",
//						BLE_RawdatatoINT[i],BLE_RawdatatoINT[i+1],BLE_RawdatatoINT[i+2],BLE_RawdatatoINT[i+3],BLE_RawdatatoINT[i+4],BLE_RawdatatoINT[i+5],BLE_RawdatatoINT[i+6],BLE_RawdatatoINT[i+7],
//						BLE_RawdatatoINT[i+8],BLE_RawdatatoINT[i+9],BLE_RawdatatoINT[i+10],BLE_RawdatatoINT[i+11],BLE_RawdatatoINT[i+12],BLE_RawdatatoINT[i+13],BLE_RawdatatoINT[i+14],BLE_RawdatatoINT[i+15],
//						BLE_RawdatatoINT[i+16],BLE_RawdatatoINT[i+17],BLE_RawdatatoINT[i+18],BLE_RawdatatoINT[i+19],BLE_RawdatatoINT[i+20],BLE_RawdatatoINT[i+21],BLE_RawdatatoINT[i+22],BLE_RawdatatoINT[i+23],
//						BLE_RawdatatoINT[i+24],BLE_RawdatatoINT[i+25],BLE_RawdatatoINT[i+26],BLE_RawdatatoINT[i+27],BLE_RawdatatoINT[i+28],BLE_RawdatatoINT[i+29],BLE_RawdatatoINT[i+30],BLE_RawdatatoINT[i+31]
//						);
//			if(i==0)
//				snprintf_(USARTBLE.buffer, 244 ,"%s,%s,", StartHead,USARTBLE.buffer_temp);
//			else if(i==4064)
//				snprintf_(USARTBLE.buffer, 244 ,"%s,%s,", USARTBLE.buffer_temp, EndHead);
//			else
//				snprintf_(USARTBLE.buffer, 244 ,"%s", USARTBLE.buffer_temp);
//
//			USARTBLE.bufferSize = min_(APP_BUFFER_SIZE, strlen(USARTBLE.buffer));
//			while(HAL_UART_Transmit_DMA(huart, USARTBLE.buffer, USARTBLE.bufferSize)!=HAL_OK);
//			HAL_IWDG_Refresh(hiwdg);
//			USARTBLE.sendRawdataflag = 0 ;
//			rawloop++;
//			in=i;
//		}

	}
}

_Bool checkBLECommandFromBLEGateway(char * BLEcommand,char * index, int len)
{
	if(strlen(BLEcommand) > 0)
	{
		   //Test 比對 function
	   char * pch;
	   /* 找尋 simple 字串 */
	   pch = strstr (BLEcommand,index);
	   if(strncmp(pch, index, len) == 0) {
		   return true;
	   }
	   else
	   {
		   return false;
	   }

	}
	else
	{

		return false;
	}

}

