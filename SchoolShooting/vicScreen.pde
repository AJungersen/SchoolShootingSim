class VicScreen{
  boolean won = false;//set this one to true, when exiting the final door
  
  
  
  VicScreen(){
    
  }
  
  void drawVicScreen(){//do colours even matter?
    popMatrix();
    rectMode(CORNER);
    fill(0);
    rect(width*0.125,height*0.125,width*0.750,height*0.750);
    fill(255);
    textMode(CENTER);
    textSize(50);
    text("Congratulations",(width/4)+45,height/2);
    textSize(40);
    text("You made it out of your school alive", 25+width/8, (height/2)+50);
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
  }
  
  
  

}
