class Items {
  int numItems, itemNum;
  boolean RoomSwitch = false;
  boolean randomNumber = false;
  
  void spawnItems() {
    if(RoomSwitch == true) {
     if(randomNumber == true){
      numItems = int(random(1,10));
      if (numItems >= 5){
       items.drawItems(); 
       println("yes");
       
     }
    }
   }
  }
  
  void drawItems(){
    if(randomNumber == true) {
     itemNum = int(random(1,6));
     
     switch(itemNum){
       case 1:
        println("koben");
        fill(255,0,0);
        ellipse(100,100,100,100);
         break;
         
       case 2:
        println("Nøgle");
        fill(0,255,0);
        ellipse(100,100,100,100);
         break;
         
       case 3:
         println("brugte løbesko");
         fill(0,0,255);
         ellipse(100,100,100,100);
         break;
         
       case 4:
         println("rundboldbat");
         fill(255,0,0);
         rect(100,100,100,100);
         break;
         
       case 5:
         println("stol");
         fill(0,255,0);
         rect(100,100,100,100);
         break;
         
       case 6:
         println("computer");
         fill(0,0,255);
         rect(100,100,100,100);
         break;
     }
    }
    RoomSwitch = false;
    randomNumber = false;
   }
      
    
    
    
    
 
    
  }
  
  
  
  
  
