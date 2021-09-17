class ItemStats {
 
  void Crowbar() {
   if(items.itemNum == 1){
        items.itemColor =  color(255, 0, 0);
        fill(items.itemColor);
        ellipse(items.position.x, items.position.y, items.itemSize.x, items.itemSize.y);
     //--------------------------//
          //Åbner alle døre//
        
   }
  }
  void Key() {
   if(items.itemNum == 2){
        items.itemColor = color(0, 255, 0);
        fill(items.itemColor);
        ellipse(items.position.x, items.position.y, items.itemSize.x, items.itemSize.y);
     //---------------------------//
        //Åbner specifikke døre//  
   }
  }
  void Shoes() {
   if(items.itemNum == 3){
        items.itemColor = color(0, 0, 255);
        fill(items.itemColor);
        ellipse(items.position.x, items.position.y, items.itemSize.x, items.itemSize.y);
     //---------------------------//
       //Player løber hurtigere//  
       
 }
  }  
  void Bat() {
   if(items.itemNum == 4){
     items.itemColor = color(254, 3, 255);
       // println("bat");
        fill(items.itemColor);
        ellipse(items.position.x, items.position.y, items.itemSize.x, items.itemSize.y);  
     //----------------------------//
        //Player kan slå shooter// 
        //dog men lav succesrate//          
   }
  }  
  void Chair() {
   if(items.itemNum == 5){
        items.itemColor = color(254, 255, 3);
        fill(items.itemColor);
        ellipse(items.position.x, items.position.y, items.itemSize.x, items.itemSize.y);
     //------------------------------------//
        //Player bevæger sig langsommere//
    //men kan slå shooter med høj succesrate//
 }
  }
  void Computer() {
   if(items.itemNum == 6){
        items.itemColor = color(2, 254, 255);
        fill(items.itemColor);
        ellipse(items.position.x, items.position.y, items.itemSize.x, items.itemSize.y); 
     //---------------------------------------//
        //Slukker for alt lys midlertidigt//  
 }
  }
}
