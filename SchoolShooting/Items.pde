ArrayList<Items> itemList = new ArrayList();
class Items {
  //itemStatus: 1=not in range,  2=in range,  3=picked up
  int numItems, itemNum, itemStatus;
  PVector itemSize = new PVector(40, 40);
  PVector position = new PVector (100, 100);
  float itemWidth = 100;
  color itemColor;
  String myRoom;


  Items(PVector _position, String _myRoom) {  
        position = _position;
        numItems = int(random(0, 10));
        //itemNum = int(random(0,6));
        itemNum = 6;
        itemStatus = 1;
        myRoom = _myRoom;
        
        itemList.add(this);
    }

  void drawItems() {  
      if(numItems <= 10) {
    switch(items.itemNum) {
    case 1:
      itemStats.Bagpack();
      println(items.itemNum);
      break;

    case 2:
      itemStats.Key();
      println(items.itemNum);
      break;

    case 3:
      itemStats.Shoes();
      println(items.itemNum);
      break;

    case 4:
      itemStats.Bat();
      println(items.itemNum);
      break;

    case 5:
      itemStats.Chair();
      println(items.itemNum);
      break;

    case 6:
      itemStats.Camohat();
      println(items.itemNum);
      break;
     
    }
   }
  }

  void detectItems () {
    if (itemStatus == 3) {
      return;
    }
    if (itemStatus == 1) {
      if (dist(player.position.x, player.position.y, position.x, position.y)  <=  itemSize.x + player.size) {
        itemStatus = 2;
        return;
      }
    }
  }
}
