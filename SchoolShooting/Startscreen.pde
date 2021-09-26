class StartScreen{
boolean gameplay;
 StartScreen(){
 gameplay = false; 
 }
 void drawStartScreen(){
   
   fill(255);
   stroke(0);
   rectMode(CENTER);
   stroke(141, 31, 31);
   strokeWeight(3);
   rect(width*0.23, height/2, width*0.5, height*0.6);
   rect(width*0.75, height*0.5, width/2, height*0.1);
   rect(width*0.75, height*0.65, width/2, height*0.1);
   rect(width*0.75, height*0.8, width/2, height*0.1);
   line(width*0.12, height*0.32, width*0.34, height*0.32);
   stroke(179, 31, 31);
   line(width*0.1, height*0.46, width*0.4-40, height*0.46);
   line(width*0.1, height*0.61, width*0.4-40, height*0.61);
   
   fill(0);
   textSize(50);
   fill(255);
   text("Choose difficulty", width/2+30, height*0.3);
   fill(0);
   text("Controls", width*0.13, height*0.3);
   textSize(30);
   text("Press e to pickup item", width*0.08-10, height*0.4);
   text("Press space to strike shooter", width*0.03-10, height*0.54);
   text("Use W, A, S, D to move", width*0.06, height*0.7);
   text("Easy", width/2, height*0.5);
   text("Medium", width/2, height*0.65);
   text("Hard", width/2, height*0.8);
   
   if(mousePressed==true && mouseX>width*0.75-width/4 && mouseX<width*0.75+width/4 && mouseY>height*0.5-height*0.05 && mouseY<height*0.5+height*0.05){
     gameDif = 1;
    gameplay = true; 
   }
   
   if(mousePressed==true && mouseX>width*0.75-width/4 && mouseX<width*0.75+width/4 && mouseY>height*0.65-height*0.05 && mouseY<height*0.65+height*0.05){
    gameDif = 2;
     gameplay = true; 
   }
   
   if(mousePressed==true && mouseX>width*0.75-width/4 && mouseX<width*0.75+width/4 && mouseY>height*0.8-height*0.05 && mouseY<height*0.8+height*0.05){
    gameDif = 3;
     gameplay = true; 
   }
   
 }
}
