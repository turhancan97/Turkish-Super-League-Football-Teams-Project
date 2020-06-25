// Uploading Images
const code char fenerbahce[1024];
const code char besiktas[1024];
const code char galatasaray[1024];
const code char basaksehir[1024];
const code char bursaspor[1024];
const code char trabzonspor[1024];
const code char alanyaspor[1024];
const code char denizlispor[1024];
const code char goztepe[1024];
//const code char sivasspor[1024];
//--------------------------//
// Keypad
char keypadPort at PORTC;
// GLDC
char GLCD_DataPort at PORTD;
sbit GLCD_CS1 at LATA0_bit;
sbit GLCD_CS2 at LATA1_bit;
sbit GLCD_RS  at LATA2_bit;
sbit GLCD_RW  at LATA3_bit;
sbit GLCD_EN  at LATA4_bit;
sbit GLCD_RST at LATA5_bit;
sbit GLCD_CS1_Direction at TRISA0_bit;
sbit GLCD_CS2_Direction at TRISA1_bit;
sbit GLCD_RS_Direction at TRISA2_bit;
sbit GLCD_RW_Direction at TRISA3_bit;
sbit GLCD_EN_Direction at TRISA4_bit;
sbit GLCD_RST_Direction at TRISA5_bit;
//----------------------------------//
// Assignment
unsigned short kp; // Keypad key
unsigned char flag; // for interrupt
unsigned char team; // To change image

bit breakFlag; // for pause,forward or backward
unsigned char x;
unsigned char y;

// Keypad function for checking if pressed
void check_Keypad()
{
kp = keypad_key_Press();
if (kp == 1)
{
team=1; // for  fenerbahce
}
if (kp == 2)
{
team=2; // for besiktas
}
if (kp == 12)
{
team=3; // for galatasaray
}
if (kp == 5)
{
team=4; // for basaksehir
}
if (kp == 6)
{
team=5; // for bursaspor
}
if (kp == 13)
{
team=6; // for trabzonspor
}
if (kp == 9)
{
team=7; // for alanyaspor
}
if (kp == 10)
{
team=8; // for denizlispor
}
if (kp == 14)
{
team=9; // for göztepe
}
}

// Fenerbahce Forward Function

fenerbahce_Animation_forward()
{
Glcd_Image(fenerbahce);  // display fenerbahce
Delay_ms(300);
check_Keypad();      // chech if we pressed to keypad
Glcd_Fill(0x00);  // clear
Glcd_Write_Text_Adv("EN",50,5); // Write text
Delay_ms(300);
check_Keypad();
Glcd_Write_Text_Adv("BUYUK",70,5); // Write text
Delay_ms(300);
check_Keypad();
Glcd_Write_Text_Adv("FENER",30,20); // Write text
Delay_ms(300);
check_Keypad();
Glcd_Write_Text_Adv("SAMPIYON",70,20); // Write text
Delay_ms(300);
check_Keypad();
Glcd_Write_Text_Adv("FENER",50,35); // Write text
Delay_ms(300);
check_Keypad();
Glcd_Image(fenerbahce);  // display fenerbahce
Delay_ms(300);
check_Keypad();
}

// Fenerbahce animation reverse mode
fenerbahce_Animation_Reverse()
{
Glcd_Image(fenerbahce);  // display fenrbahce
Delay_ms(1000);
check_Keypad();      // chech if we pressed to keypad
Glcd_Fill(0x00);  // clear
Glcd_Write_Text_Adv("EN",50,5); // Write text
Glcd_Write_Text_Adv("BUYUK",70,5); // Write text
Glcd_Write_Text_Adv("FENER",30,20); // Write text
Glcd_Write_Text_Adv("SAMPIYON",70,20); // Write text
Glcd_Write_Text_Adv("FENER",50,35); // Write text
Delay_ms(300);
check_Keypad();
Glcd_Fill(0x00);  // clear
Glcd_Write_Text_Adv("EN",50,5); // Write text
Glcd_Write_Text_Adv("BUYUK",70,5); // Write text
Glcd_Write_Text_Adv("FENER",30,20); // Write text
Glcd_Write_Text_Adv("SAMPIYON",70,20); // Write text
Delay_ms(300);
check_Keypad();
Glcd_Fill(0x00);  // clear
Glcd_Write_Text_Adv("EN",50,5); // Write text
Glcd_Write_Text_Adv("BUYUK",70,5); // Write text
Glcd_Write_Text_Adv("FENER",30,20); // Write text
Delay_ms(300);
check_Keypad();
Glcd_Fill(0x00);  // clear
Glcd_Write_Text_Adv("EN",50,5); // Write text
Glcd_Write_Text_Adv("BUYUK",70,5); // Write text
Delay_ms(300);
check_Keypad();
Glcd_Fill(0x00);  // clear
Glcd_Write_Text_Adv("EN",50,5); // Write text
Delay_ms(300);
check_Keypad();
Glcd_Fill(0x00);  // clear
Glcd_Image(fenerbahce);  // display fenerbahce
}

// animation forward
 animation_forward()
 {
 for(x=x;x<=120; x=x+2) //loop for move image
 {
 if(team==2)  // check which image
 {
 Glcd_Fill(0x00); // clear
 Glcd_PartialImage(x,0,128,64,128,64,besiktas); // besiktas
 }
 if(team==3)  // check which image
 {
 Glcd_Fill(0x00); // clear
 Glcd_PartialImage(x,0,128,64,128,64,galatasaray); // galatasaray
 }
 if(team==4)  // check which image
 {
 Glcd_Fill(0x00); // clear
 Glcd_PartialImage(x,0,128,64,128,64,basaksehir); // basaksehir
 }
 if(team==5)  // check which image
 {
 Glcd_Fill(0x00); // clear
 Glcd_PartialImage(x,0,128,64,128,64,bursaspor); // bursaspor
 }
 if(team==6)  // check which image
 {
 Glcd_Fill(0x00); // clear
 Glcd_PartialImage(x,0,128,64,128,64,trabzonspor); // trabzonspor
 }
 if(team==7)  // check which image
 {
 Glcd_Fill(0x00); // clear
 Glcd_PartialImage(x,0,128,64,128,64,alanyaspor); // alanyaspor
 }
 if(team==8)  // check which image
 {
 Glcd_Fill(0x00); // clear
 Glcd_PartialImage(x,0,128,64,128,64,denizlispor); // denizlispor
 }
 if(team==9)  // check which image
 {
 Glcd_Fill(0x00); // clear
 Glcd_PartialImage(x,0,128,64,128,64,goztepe); // goztepe
 }
 if(team==1)  // check which image
 {
 Glcd_Fill(0x00); // clear
 fenerbahce_Animation_forward();           // fenerbahce
 }
  Delay_ms(100);
  check_Keypad();
  y=x;  // x for forward and y for reverse
  if(x==120) // to check is image is out of the screen
  {
  x=0;
  }
  if(breakFlag == 1) break; // Check if there is interrupt
  }
 }
 animation_backward()
 {
 for(y=y;y>=2; y=y-2) //loop for move image
 {
 if(team==2)  // check which image
 {
 Glcd_Fill(0x00); // clear
 Glcd_PartialImage(y,0,128,64,128,64,besiktas); // besiktas
 }
 if(team==3)  // check which image
 {
 Glcd_Fill(0x00); // clear
 Glcd_PartialImage(y,0,128,64,128,64,galatasaray); // galatasaray
 }
 if(team==4)  // check which image
 {
 Glcd_Fill(0x00); // clear
 Glcd_PartialImage(y,0,128,64,128,64,basaksehir); // basaksehir
 }
 if(team==5)  // check which image
 {
 Glcd_Fill(0x00); // clear
 Glcd_PartialImage(y,0,128,64,128,64,bursaspor); // bursaspor
 }
 if(team==6)  // check which image
 {
 Glcd_Fill(0x00); // clear
 Glcd_PartialImage(y,0,128,64,128,64,trabzonspor); // trabzonspor
 }
 if(team==7)  // check which image
 {
 Glcd_Fill(0x00); // clear
 Glcd_PartialImage(y,0,128,64,128,64,alanyaspor); // alanyaspor
 }
 if(team==8)  // check which image
 {
 Glcd_Fill(0x00); // clear
 Glcd_PartialImage(y,0,128,64,128,64,denizlispor); // denizlispor
 }
 if(team==9)  // check which image
 {
 Glcd_Fill(0x00); // clear
 Glcd_PartialImage(y,0,128,64,128,64,goztepe); // goztepe
 }
 if(team==1)  // check which image
 {
 Glcd_Fill(0x00); // clear
 fenerbahce_Animation_Reverse();             // fenerbahce
 }
  Delay_ms(100);
  check_Keypad();
  x=y;  // x for forward and y for reverse
  if(y<=2) // to check is image is out of the screen
  {
  y=120;
  }
  if(breakFlag == 1) break; // Check if there is interrupt
  }
 }
// Pause the animation
animation_pause()
{
 if(team==2)  // check which image
 {
 Glcd_PartialImage(x,0,128,64,128,64,besiktas); // besiktas
 }
 if(team==3)  // check which image
 {
 Glcd_PartialImage(x,0,128,64,128,64,galatasaray); // galatasaray
 }
 if(team==4)  // check which image
 {
 Glcd_PartialImage(x,0,128,64,128,64,basaksehir); // basaksehir
 }
 if(team==5)  // check which image
 {
 Glcd_PartialImage(x,0,128,64,128,64,bursaspor); // bursaspor
 }
 if(team==6)  // check which image
 {
 Glcd_PartialImage(x,0,128,64,128,64,trabzonspor); // trabzonspor
 }
 if(team==7)  // check which image
 {
 Glcd_PartialImage(x,0,128,64,128,64,alanyaspor); // alanyaspor
 }
 if(team==8)  // check which image
 {
 Glcd_PartialImage(x,0,128,64,128,64,denizlispor); // denizlispor
 }
 if(team==9)  // check which image
 {
 Glcd_PartialImage(x,0,128,64,128,64,goztepe); // goztepe
 }
 if(team==1)  // check which image
 {
   Glcd_Image(fenerbahce);  // display fenerbahce
 }
 check_Keypad();
}
// Interrupt when interrupt flag is set
void interrupt()
{
// Check Interrupt INT0 is set. INT0F_bit will be 1
if(INT0F_bit==1) // check for int0 Flag bit
{
flag = 1;
breakFlag =~ breakFlag;
}
// Check Interrupt INT0 is set. INT0F_bit will be 1
else if(INT1F_bit==1) // check for int1 Flag bit
{
flag = 2;
breakFlag =~ breakFlag;
}
// Check Interrupt INT0 is set. INT2F_bit will be 1
else if(INT2F_bit==1) // check for int2 Flag bit
{
flag = 3;
breakFlag =~ breakFlag;
}
INT0F_bit=0;
INT1F_bit=0;
INT2F_bit=0;
}
// Main program
void main() {
// Configure ports
ANSELB=0;
ANSELD=0;
ANSELB=0;
ANSELD=0;
// External Hardware Interrupts (INT0(RB0),INT1(RB1),INT2(RB2))
flag=1;
breakFlag=0;
//INT0
INTEDG0_bit = 1;  // Set Interrupt on rising edge
INT0IF_bit = 0;   // Clear INT0 flag
INT0IE_bit = 1;   // Enable INT0 interrupt
//INT1
INTEDG1_bit = 1;  // Set Interrupt on rising edge
INT1IF_bit = 0;   // Clear INT0 flag
INT1IE_bit = 1;   // Enable INT0 interrupt
//INT2
INTEDG2_bit = 1;  // Set Interrupt on rising edge
INT2IF_bit = 0;   // Clear INT0 flag
INT2IE_bit = 1;   // Enable INT0 interrupt
GIE_bit = 1; // enable Global interrupt
Keypad_Init(); // Start Keypad
Glcd_Init();   // Start glcd
Glcd_Fill(0x00); // clear glcd
team=0;
Glcd_Write_Text_Adv("Assignment Name:",0,0); // Write text
Glcd_Write_Text_Adv("Turkish Super League",0,10); // Write text
Glcd_Write_Text_Adv("Name: Turhan Can Kargin",0,30); // Write text
Glcd_Write_Text_Adv("Student Number: 150403005",0,40); // Write text
Delay_ms(1000);
Glcd_Fill(0x00); // clear glcd
Glcd_Write_Text_Adv("Please Press any",0,0); // Write text
Glcd_Write_Text_Adv("Button on Keypad",0,10); // Write text
Glcd_Write_Text_Adv("to see Your Super",0,20); // Write text
Glcd_Write_Text_Adv("League Team",0,30); // Write text
// Looping forever
while(1){
if(flag==1) // check if INT0
{
animation_forward(); // forward
}
if(flag==2) // check if INT1
{
animation_backward(); // backward
}
if(flag==3) // check if INT2
{
animation_pause(); // pause
}
}
}