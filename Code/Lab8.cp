#line 1 "C:/Users/asus/Desktop/Mikro Lablar/LAB8/Code/Lab8.c"

const code char fenerbahce[1024];
const code char besiktas[1024];
const code char galatasaray[1024];
const code char basaksehir[1024];
const code char bursaspor[1024];
const code char trabzonspor[1024];
const code char alanyaspor[1024];
const code char denizlispor[1024];
const code char goztepe[1024];



char keypadPort at PORTC;

char GLCD_DataPort at PORTD;
sbit GLCD_CS1 at LATA0_bit;
sbit GLCD_CS2 at LATA1_bit;
sbit GLCD_RS at LATA2_bit;
sbit GLCD_RW at LATA3_bit;
sbit GLCD_EN at LATA4_bit;
sbit GLCD_RST at LATA5_bit;
sbit GLCD_CS1_Direction at TRISA0_bit;
sbit GLCD_CS2_Direction at TRISA1_bit;
sbit GLCD_RS_Direction at TRISA2_bit;
sbit GLCD_RW_Direction at TRISA3_bit;
sbit GLCD_EN_Direction at TRISA4_bit;
sbit GLCD_RST_Direction at TRISA5_bit;


unsigned short kp;
unsigned char flag;
unsigned char team;

bit breakFlag;
unsigned char x;
unsigned char y;


void check_Keypad()
{
kp = keypad_key_Press();
if (kp == 1)
{
team=1;
}
if (kp == 2)
{
team=2;
}
if (kp == 12)
{
team=3;
}
if (kp == 5)
{
team=4;
}
if (kp == 6)
{
team=5;
}
if (kp == 13)
{
team=6;
}
if (kp == 9)
{
team=7;
}
if (kp == 10)
{
team=8;
}
if (kp == 14)
{
team=9;
}
}



fenerbahce_Animation_forward()
{
Glcd_Image(fenerbahce);
Delay_ms(300);
check_Keypad();
Glcd_Fill(0x00);
Glcd_Write_Text_Adv("EN",50,5);
Delay_ms(300);
check_Keypad();
Glcd_Write_Text_Adv("BUYUK",70,5);
Delay_ms(300);
check_Keypad();
Glcd_Write_Text_Adv("FENER",30,20);
Delay_ms(300);
check_Keypad();
Glcd_Write_Text_Adv("SAMPIYON",70,20);
Delay_ms(300);
check_Keypad();
Glcd_Write_Text_Adv("FENER",50,35);
Delay_ms(300);
check_Keypad();
Glcd_Image(fenerbahce);
Delay_ms(300);
check_Keypad();
}


fenerbahce_Animation_Reverse()
{
Glcd_Image(fenerbahce);
Delay_ms(1000);
check_Keypad();
Glcd_Fill(0x00);
Glcd_Write_Text_Adv("EN",50,5);
Glcd_Write_Text_Adv("BUYUK",70,5);
Glcd_Write_Text_Adv("FENER",30,20);
Glcd_Write_Text_Adv("SAMPIYON",70,20);
Glcd_Write_Text_Adv("FENER",50,35);
Delay_ms(300);
check_Keypad();
Glcd_Fill(0x00);
Glcd_Write_Text_Adv("EN",50,5);
Glcd_Write_Text_Adv("BUYUK",70,5);
Glcd_Write_Text_Adv("FENER",30,20);
Glcd_Write_Text_Adv("SAMPIYON",70,20);
Delay_ms(300);
check_Keypad();
Glcd_Fill(0x00);
Glcd_Write_Text_Adv("EN",50,5);
Glcd_Write_Text_Adv("BUYUK",70,5);
Glcd_Write_Text_Adv("FENER",30,20);
Delay_ms(300);
check_Keypad();
Glcd_Fill(0x00);
Glcd_Write_Text_Adv("EN",50,5);
Glcd_Write_Text_Adv("BUYUK",70,5);
Delay_ms(300);
check_Keypad();
Glcd_Fill(0x00);
Glcd_Write_Text_Adv("EN",50,5);
Delay_ms(300);
check_Keypad();
Glcd_Fill(0x00);
Glcd_Image(fenerbahce);
}


 animation_forward()
 {
 for(x=x;x<=120; x=x+2)
 {
 if(team==2)
 {
 Glcd_Fill(0x00);
 Glcd_PartialImage(x,0,128,64,128,64,besiktas);
 }
 if(team==3)
 {
 Glcd_Fill(0x00);
 Glcd_PartialImage(x,0,128,64,128,64,galatasaray);
 }
 if(team==4)
 {
 Glcd_Fill(0x00);
 Glcd_PartialImage(x,0,128,64,128,64,basaksehir);
 }
 if(team==5)
 {
 Glcd_Fill(0x00);
 Glcd_PartialImage(x,0,128,64,128,64,bursaspor);
 }
 if(team==6)
 {
 Glcd_Fill(0x00);
 Glcd_PartialImage(x,0,128,64,128,64,trabzonspor);
 }
 if(team==7)
 {
 Glcd_Fill(0x00);
 Glcd_PartialImage(x,0,128,64,128,64,alanyaspor);
 }
 if(team==8)
 {
 Glcd_Fill(0x00);
 Glcd_PartialImage(x,0,128,64,128,64,denizlispor);
 }
 if(team==9)
 {
 Glcd_Fill(0x00);
 Glcd_PartialImage(x,0,128,64,128,64,goztepe);
 }
 if(team==1)
 {
 Glcd_Fill(0x00);
 fenerbahce_Animation_forward();
 }
 Delay_ms(100);
 check_Keypad();
 y=x;
 if(x==120)
 {
 x=0;
 }
 if(breakFlag == 1) break;
 }
 }
 animation_backward()
 {
 for(y=y;y>=2; y=y-2)
 {
 if(team==2)
 {
 Glcd_Fill(0x00);
 Glcd_PartialImage(y,0,128,64,128,64,besiktas);
 }
 if(team==3)
 {
 Glcd_Fill(0x00);
 Glcd_PartialImage(y,0,128,64,128,64,galatasaray);
 }
 if(team==4)
 {
 Glcd_Fill(0x00);
 Glcd_PartialImage(y,0,128,64,128,64,basaksehir);
 }
 if(team==5)
 {
 Glcd_Fill(0x00);
 Glcd_PartialImage(y,0,128,64,128,64,bursaspor);
 }
 if(team==6)
 {
 Glcd_Fill(0x00);
 Glcd_PartialImage(y,0,128,64,128,64,trabzonspor);
 }
 if(team==7)
 {
 Glcd_Fill(0x00);
 Glcd_PartialImage(y,0,128,64,128,64,alanyaspor);
 }
 if(team==8)
 {
 Glcd_Fill(0x00);
 Glcd_PartialImage(y,0,128,64,128,64,denizlispor);
 }
 if(team==9)
 {
 Glcd_Fill(0x00);
 Glcd_PartialImage(y,0,128,64,128,64,goztepe);
 }
 if(team==1)
 {
 Glcd_Fill(0x00);
 fenerbahce_Animation_Reverse();
 }
 Delay_ms(100);
 check_Keypad();
 x=y;
 if(y<=2)
 {
 y=120;
 }
 if(breakFlag == 1) break;
 }
 }

animation_pause()
{
 if(team==2)
 {
 Glcd_PartialImage(x,0,128,64,128,64,besiktas);
 }
 if(team==3)
 {
 Glcd_PartialImage(x,0,128,64,128,64,galatasaray);
 }
 if(team==4)
 {
 Glcd_PartialImage(x,0,128,64,128,64,basaksehir);
 }
 if(team==5)
 {
 Glcd_PartialImage(x,0,128,64,128,64,bursaspor);
 }
 if(team==6)
 {
 Glcd_PartialImage(x,0,128,64,128,64,trabzonspor);
 }
 if(team==7)
 {
 Glcd_PartialImage(x,0,128,64,128,64,alanyaspor);
 }
 if(team==8)
 {
 Glcd_PartialImage(x,0,128,64,128,64,denizlispor);
 }
 if(team==9)
 {
 Glcd_PartialImage(x,0,128,64,128,64,goztepe);
 }
 if(team==1)
 {
 Glcd_Image(fenerbahce);
 }
 check_Keypad();
}

void interrupt()
{

if(INT0F_bit==1)
{
flag = 1;
breakFlag =~ breakFlag;
}

else if(INT1F_bit==1)
{
flag = 2;
breakFlag =~ breakFlag;
}

else if(INT2F_bit==1)
{
flag = 3;
breakFlag =~ breakFlag;
}
INT0F_bit=0;
INT1F_bit=0;
INT2F_bit=0;
}

void main() {

ANSELB=0;
ANSELD=0;
ANSELB=0;
ANSELD=0;

flag=1;
breakFlag=0;

INTEDG0_bit = 1;
INT0IF_bit = 0;
INT0IE_bit = 1;

INTEDG1_bit = 1;
INT1IF_bit = 0;
INT1IE_bit = 1;

INTEDG2_bit = 1;
INT2IF_bit = 0;
INT2IE_bit = 1;
GIE_bit = 1;
Keypad_Init();
Glcd_Init();
Glcd_Fill(0x00);
team=0;
Glcd_Write_Text_Adv("Assignment Name:",0,0);
Glcd_Write_Text_Adv("Turkish Super League",0,10);
Glcd_Write_Text_Adv("Name: Turhan Can Kargin",0,30);
Glcd_Write_Text_Adv("Student Number: 150403005",0,40);
Delay_ms(1000);
Glcd_Fill(0x00);
Glcd_Write_Text_Adv("Please Press any",0,0);
Glcd_Write_Text_Adv("Button on Keypad",0,10);
Glcd_Write_Text_Adv("to see Your Super",0,20);
Glcd_Write_Text_Adv("League Team",0,30);

while(1){
if(flag==1)
{
animation_forward();
}
if(flag==2)
{
animation_backward();
}
if(flag==3)
{
animation_pause();
}
}
}
