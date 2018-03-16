const int buzzer = 9; 

//*****************************************
#define NOTE_C4  262   //Defining note frequency
#define NOTE_D4  294
#define NOTE_E4  330
#define NOTE_F4  349
#define NOTE_G4  392
#define NOTE_A4  440
#define NOTE_B4  494
#define NOTE_C5  523
#define NOTE_D5  587
#define NOTE_E5  659
#define NOTE_F5  698
#define NOTE_G5  784
#define NOTE_A5  880
#define NOTE_B5  988
//*****************************************

int i = 0, wait = 15;;
int arr[13][13] = {
                 {0, 1, 2, 3, 4, 5, 6, 7, 8, 10, 11, 12, 13},
                 {NOTE_C4, NOTE_D4, NOTE_E4, NOTE_F4, NOTE_G4, NOTE_A4, NOTE_B4, NOTE_C5, NOTE_D5, NOTE_E5,NOTE_F5, NOTE_G5, NOTE_A5}};
void setup() {

  for(i = 0; i < 13; i++)
  {
    pinMode(arr[0][i],INPUT);
  }
}

void loop() {

  for(i = 0; i < 13; i++)
  {
    if(digitalRead(arr[0][i]) == LOW)
    {
      tone(buzzer,arr[1][i],wait); 
    }
  }
   
}

