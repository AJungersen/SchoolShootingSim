class VicScreen{
  boolean won = false;//set this one to true, when exiting the final door
  boolean lost = false;
  int sec;
  int min;
  
  
  
  VicScreen(){
  }
  

  void totalTime(){
  sec = round(millis()/1000);
  if(sec%60==0 && min*60<sec){
  min++;
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
    text("Your time was: " + min + ":" + sec, (width/4)-15, (height/2)+100);//i havent checked whther this is actually how time works, so it might just come back and bite us in the ass
    rect(width/3,height*0.7,2*width/6,80);
    fill(0);
    textSize(35);
    text("Press to play again",10+(width/6)*2,200+height/2);
    if(mousePressed){
      if(mouseX<(width/3) && mouseY<(height*0.7) && mouseX>(2*width/6) && mouseY>80){
        //code to reset game
        won = false;
        items.select = true;
        println("Restarting game");
      }
    }
    //popMatrix();
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
    if(mousePressed){
      if(mouseX<(width/3) && mouseY<(height*0.7) && mouseX>(2*width/6) && mouseY>80){
        //code to reset game
        lost = false;
        items.select = true;
        println("Restarting game");
      }
    }
    popMatrix();
  }
}
