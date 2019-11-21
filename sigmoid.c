#include "stm32f4xx.h"
#include <string.h>
void printMsg(const int a, const int b, const int c, const int d)
{
	 char Msg[100];
	 char *ptr;
	 sprintf(Msg, "%d\t %d\t %d\t %d\n", a, b, c, d);
	 ptr = Msg ;
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
}
void printMsg_or(const int a, const int b, const int c, const int d)
{
	 char Msg[100];
	 char *ptr;
	 sprintf(Msg, "%d\t %d\t %d\t %d\n", a, b, c, d);
	 ptr = Msg ;
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
}
void printMsg_nor(const int a, const int b, const int c, const int d)
{
	 char Msg[100];
	 char *ptr;
	 sprintf(Msg, "%d\t %d\t %d\t %d\n", a, b, c, d);
	 ptr = Msg ;
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
}
void printMsg_A(const int a, const int b, const int c, const int d)
{
	 char Msg[100];
	 char *ptr;
	 sprintf(Msg, "AND gate logic table \nX1\t X2\t X3\t Y\n");
	 ptr = Msg ;
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
}
void printMsg_O(const int a, const int b, const int c, const int d)
{
	 char Msg[100];
	 char *ptr;
	 sprintf(Msg, "OR gate logic table \nX1\t X2\t X3\t Y\n");
	 ptr = Msg ;
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
}
void printMsg_B(const int a, const int b, const int c, const int d)
{
	 char Msg[100];
	 char *ptr;
	 sprintf(Msg, "NAND gate logic table \nX1\t X2\t X3\t Y\n");
	 ptr = Msg ;
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
}
void printMsg_C(const int a, const int b, const int c, const int d)
{
	 char Msg[100];
	 char *ptr;
	 sprintf(Msg, "NOR gate logic table \nX1\t X2\t X3\t Y\n");
	 ptr = Msg ;
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
}
void printMsg_D(const int a, const int b, const int c, const int d)
{
	 char Msg[100];
	 char *ptr;
	 sprintf(Msg, "NOT gate logic table \nX1\t X2\t X3\t Y\n");
	 ptr = Msg ;
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
}
void printMsg_E(const int a, const int b, const int c, const int d)
{
	 char Msg[100];
	 char *ptr;
	 sprintf(Msg, "XNOR gate logic table \nX1\t X2\t X3\t Y\n");
	 ptr = Msg ;
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
}
void printMsg_F(const int a, const int b, const int c, const int d)
{
	 char Msg[100];
	 char *ptr;
	 sprintf(Msg, "XOR gate logic table \nX1\t X2\t X3\t Y\n");
	 ptr = Msg ;
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
}
void printMsg_not(const int a, const int b, const int c, const int d)
{
	 char Msg[100];
	 char *ptr;
	 sprintf(Msg, "%d\t %d\t %d\t %d\n", a, b, c, d);
	 ptr = Msg ;
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
}
void printMsg_nand(const int a, const int b, const int c, const int d)
{
	 char Msg[100];
	 char *ptr;
	 sprintf(Msg, "%d\t %d\t %d\t %d\n", a, b, c, d);
	 ptr = Msg ;
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
}
void printMsg_xnor(const int a, const int b, const int c, const int d)
{
	 char Msg[100];
	 char *ptr;
	 sprintf(Msg, "%d\t %d\t %d\t %d\n", a, b, c, d);
	 ptr = Msg ;
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
}
void printMsg_xor(const int a, const int b, const int c, const int d)
{
	 char Msg[100];
	 char *ptr;
	 sprintf(Msg, "%d\t %d\t %d\t %d\n", a, b, c, d);
	 ptr = Msg ;
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
}
void printMsg1(const int a)
{
	 char Msg[100];
	 char *ptr;
	 sprintf(Msg, "Teta = %d, ", a);
	 ptr = Msg ;
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
}
void printMsg2p(const int a, const int b)
{
	 char Msg[100];
	 char *ptr;
	 sprintf(Msg, "X=%d, ", a);
	 ptr = Msg ;
   while(*ptr != '\0')
	 {
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 sprintf(Msg, "Y=%d\n", b);
	 ptr = Msg ;
   while(*ptr != '\0')
	 {
      ITM_SendChar(*ptr);
      ++ptr;
   }
}

void printMsg4p(const int a, const int b, const int c, const int d, const int e)
{
	 char Msg[100];
	 char *ptr;
	 // Printing the message
	sprintf(Msg,"\nPrinting First parameter a:  ");
	 ptr = Msg ;
   while(*ptr != '\0')
	 {
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 //Printing the first parameter
	 sprintf(Msg, "%d", a);
	 ptr = Msg ;
   while(*ptr != '\0')
	 {
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 // Printing the message
	 sprintf(Msg,"\nPrinting Second parameter b: ");
	 ptr = Msg ;
   while(*ptr != '\0')
	 {
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 sprintf(Msg, "%x", b);
	 ptr = Msg ;
   while(*ptr != '\0')
	 {
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 // Printing the message
	 sprintf(Msg,"\nPrinting Third parameter c: ");
	 ptr = Msg ;
   while(*ptr != '\0')
	 {
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 sprintf(Msg, "%x", c);
	 ptr = Msg ;
   while(*ptr != '\0')
	 {
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 // Printing the message
	 sprintf(Msg,"\nPrinting Four parameter d: ");
	 ptr = Msg ;
   while(*ptr != '\0')
	 {
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 sprintf(Msg, "%x", d);
	 ptr = Msg ;
   while(*ptr != '\0')
	 {
      ITM_SendChar(*ptr);
      ++ptr;
	 }

	 // Printing the message
	 sprintf(Msg,"\nPrinting Fifth parameter e (check this value is correct or not): ");
	 ptr = Msg ;
   while(*ptr != '\0')
	 {
      ITM_SendChar(*ptr);
      ++ptr;
   }

	  sprintf(Msg, "%x", e);
	 ptr = Msg ;
   while(*ptr != '\0')
	 {
      ITM_SendChar(*ptr);
      ++ptr;
   }
 }