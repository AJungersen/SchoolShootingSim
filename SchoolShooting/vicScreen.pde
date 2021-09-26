class VicScreen{
  PrintWriter printWriter;
  boolean won = false;//set this one to true, when exiting the final door
  boolean lost = false;
  boolean highScoresResults = false;
  int sec;
  int min;
  //int temp = times.length;
  String[] tider;
  String[] line;
  String[] newLine = new String[1];
  //String[] newData = new String[temp + 1];
  String oneName, twoName, threeName, fourName, fiveName;
  int oneMin = 100, twoMin = 100, threeMin = 100, fourMin = 100, fiveMin = 100;
  int oneSec = 60, twoSec = 60, threeSec = 60, fourSec = 60, fiveSec = 60;
  String enterName = "";
  
  VicScreen(){
  }
  

  void totalTime(){
  sec = round(millis()/1000)-timeStart;
  if(sec%60==0 && min*60<sec){
  min++;
    if(won == false){
    sec = round(millis()/1000);
    if(sec%60==0 && min*60<sec){
      min++;
      }
    }
  }
  }
  
  void drawHighScore(){
    highScoresTableCalculate();
    rectMode(CORNER);
    fill(0);
    rect(width*0.125,height*0.125,width*0.750,height*0.750);
    fill(255);
    textSize(50);
    text("Top 5 Scores",(width/3)+20,height/4);
    textSize(20);
    text(oneName + " " + oneMin + ":" + oneSec,(width/4),(height/4)+30);
    text(twoName + " " + twoMin + ":" + twoSec,(width/4),(height/4)+60);
    text(threeName + " " + threeMin + ":" + threeSec,(width/4),(height/4)+90);
    text(fourName + " " + fourMin + ":" + fourSec,(width/4),(height/4)+120);
    text(fiveName + " " + fiveMin + ":" + fiveSec,(width/4),(height/4)+150);
    rect(width/4,height*0.7,width/2,80);
    fill(255);
    textSize(25);
    //if(mouseX<250 || mouseY<525 || mouseX>750 || mouseY>600){
    text("Type your first name. Press Enter to save",width/4,125+(height/2));//there could potentially be an error if they were to press space
    //}
    fill(0);
    text(enterName, (width/4)+20, 200+height/2);
    
      
        if(keyPressed){
        if(key != CODED && key != BACKSPACE){
        if(key == ENTER){}else{
        enterName = enterName + key;
        delay(100);
        }
        } else if(key == BACKSPACE && enterName.length() > 0){
        enterName = enterName.substring(0, enterName.length()-1);
        delay(100);  
        }
        if(key == ENTER){
          
          /*for(int y = 0; y < newData.length; y++){
          newData[y] = times[y];
          if(y==newData.length-1){
          newData[y] = enterName + " " + str(min) + " " + str(sec-(min*60));
              }
            }*/ 
          saveStrings("data/theGameHighScores.txt", times);
          reset();
          won = false;
          highScoresResults = false;
        }
      }
    }
  
   
   
  void highScoresTableCalculate(){//not an actual table  
    for(int i = 0; i < times.length; i++){
    line = split(times[i], ' ');//remember to initialize stuff from other file
    int minHigh = Integer.valueOf(line[1]);
    int secHigh = Integer.valueOf(line[2]);
    for(int j = 0; j < times.length; j++){
    if(minHigh < oneMin || minHigh==oneMin && secHigh <= oneSec){
      if(minHigh==oneMin && secHigh==oneSec){
      } else {
      fiveName = fourName;
      fourName = threeName;
      threeName = twoName;
      twoName = oneName;
      oneName = line[0];      
      fiveMin = fourMin;
      fourMin = threeMin;
      threeMin = twoMin;
      twoMin = oneMin;
      oneMin = Integer.valueOf(line[1]);
      fiveSec = fourSec;
      fourSec = threeSec;
      threeSec = twoSec;
      twoSec = oneSec;
      oneSec = Integer.valueOf(line[2]);
      }
    } else if(minHigh < twoMin || minHigh==twoMin && secHigh <= twoSec){
      if(minHigh==twoMin && secHigh==twoSec){
      } else {
      fiveName = fourName;
      fourName = threeName;
      threeName = twoName;
      twoName = line[0];      
      fiveMin = fourMin;
      fourMin = threeMin;
      threeMin = twoMin;
      twoMin = Integer.valueOf(line[1]);
      fiveSec = fourSec;
      fourSec = threeSec;
      threeSec = twoSec;
      twoSec = Integer.valueOf(line[2]);
      }
    }else if(minHigh < threeMin || minHigh==threeMin && secHigh <= threeSec){
      if(minHigh==threeMin && secHigh==threeSec){
      } else {
      fiveName = fourName;
      fourName = threeName;
      threeName = line[0];      
      fiveMin = fourMin;
      fourMin = threeMin;
      threeMin = Integer.valueOf(line[1]);
      fiveSec = fourSec;
      fourSec = threeSec;
      threeSec = Integer.valueOf(line[2]);
      }
    }else if(minHigh < fourMin || minHigh==fourMin && secHigh <= fourSec){
      if(minHigh==fourMin && secHigh==fourSec){
      } else {
      fiveName = fourName;
      fourName = line[0];      
      fiveMin = fourMin;
      fourMin = Integer.valueOf(line[1]);
      fiveSec = fourSec;
      fourSec = Integer.valueOf(line[2]);
      }
    }else if(minHigh < fiveMin || minHigh==fiveMin && secHigh <= fiveSec){
      if(minHigh==fourMin && secHigh==fourSec){
      } else {
      fiveName = line[0];      
      fiveMin = Integer.valueOf(line[1]);
      fiveSec = Integer.valueOf(line[2]);
        } 
      }
    }
  }
}
  
  void drawVicScreen(){//do colours even matter?
    pushMatrix();
    translate(0,-50);
    rectMode(CORNER);
    fill(0);
    rect(width*0.125,height*0.125,width*0.750,height*0.750);
    fill(255);
    textSize(50);
    text("Congratulations",(width/4)+45,height/2);
    textSize(40);
    text("You made it out of your school alive", 25+width/8, (height/2)+50);
    text("Your time was: " + min + ":" + (sec-60*min), (width/4)-15, (height/2)+100);//i havent checked whther this is actually how time works, so it might just come back and bite us in the ass
    rect(width/4,height*0.7,width/2,80);
    fill(0);
    textSize(35);
    text("Press to go to high scores",(width/4)+35,200+height/2);
    
    
    


    
    if(mousePressed){
      if(mouseX<(2*width/3) && mouseY<(height*0.7) && mouseX>(width/3) && mouseY>80){
        highScoresResults = true;
      }
    }
    popMatrix();
  }
  
  void drawDeathScreen(){
    pushMatrix();
    translate(0,-50);
    rectMode(CORNER);
    fill(0);
    rect(width*0.125,height*0.125,width*0.750,height*0.750);
    fill(255);
    textSize(50);
    text("You lost",(width/3)+70,height/2);
    textSize(34);
    text("You didn't make it out of your school alive", 25+width/8, (height/2)+50);
    rect(width/3,height*0.7,2*width/6,80);
    fill(0);
    textSize(35);
    text("Press to play again",10+(width/6)*2,200+height/2);
    if(mousePressed == true){
      if(mouseX<(2*width/3) && mouseY<(height*0.7) && mouseX>(width/3) && mouseY>80){
        reset();
        lost = false;
      }
    }
    popMatrix();
  }
}
