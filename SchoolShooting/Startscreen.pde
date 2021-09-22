class StartScreen{
boolean gameplay;
 StartScreen(){
 gameplay = false; 
 }
 void drawStartScreen(){
   background(0,0,250);
   fill(255);
   rectMode(CENTER);
   rect(width*0.23,height/2,width*0.5,height*0.6);
   rect(width*0.75,height*0.5,width/2,height*0.1);
   rect(width*0.75,height*0.65,width/2,height*0.1);
   rect(width*0.75,height*0.8,width/2,height*0.1);
   fill(0);
   textSize(30);
   textMode(CENTER);
   text("Choose difficulty", width/2,height*0.3);
   text("Controls", width*0.01,height*0.3);
   text("press e to pickup item",width*0.01,height*0.4);
   text("press space to strike shooter",width*0.01,height*0.5);
   text("Use arrow keys to move",width*0.01,height*0.6);
   text("let",width/2,height*0.5);
   text("medium",width/2,height*0.65);
   text("svært",width/2,height*0.8);
 }
}
