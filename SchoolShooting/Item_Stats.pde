
//--------------------------//

class ItemStats {
 
  void Koben() {
   if(items.itemNum == 1){
     items.itemColor =  color(255, 0, 0);
        println("koben");
        fill(items.itemColor);
        ellipse(items.position.x, items.position.y, items.itemSize.x, items.itemSize.y);
   }
  }
  void Key() {
   if(items.itemNum == 2){
     items.itemColor = color(0, 255, 0);
        println("nøgle");
        fill(items.itemColor);
        ellipse(items.position.x, items.position.y, items.itemSize.x, items.itemSize.y);
   }
  }
  void Shoes() {
   if(items.itemNum == 3){
     items.itemColor = color(0, 0, 255);
        println("brugte løbesko");
        fill(items.itemColor);
        ellipse(items.position.x, items.position.y, items.itemSize.x, items.itemSize.y);
   }
  }  
  void Bat() {
   if(items.itemNum == 4){
     items.itemColor = color(254, 3, 255);
        println("rundboldbat");
        fill(items.itemColor);
        ellipse(items.position.x, items.position.y, items.itemSize.x, items.itemSize.y);  
   }
  }  
  void Chair() {
   if(items.itemNum == 5){
     items.itemColor = color(254, 255, 3);
        println("stol");
        fill(items.itemColor);
        ellipse(items.position.x, items.position.y, items.itemSize.x, items.itemSize.y);
   }
  }
  void Computer() {
   if(items.itemNum == 6){
     items.itemColor = color(2, 254, 255);
        println("computer");
        fill(items.itemColor);
        ellipse(items.position.x, items.position.y, items.itemSize.x, items.itemSize.y); 
   }
  }
}
