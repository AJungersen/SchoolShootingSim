class Items {
  float numItems;
  boolean RoomSwitch = false;
  
  void spawnItems() {
    if(RoomSwitch == false) {
      numItems = random(1,2);
      if (numItems == 1){
       drawItems(); 
      }
    }
    
    
  }
  
  void drawItems(){
    
    
  }
  
  
  
  
  
}
