ArrayList<Items> itemList = new ArrayList();
class Items {
  //itemStatus: 1=not in range,  2=in range,  3=picked up
  int numItems, itemNum, itemStatus;
  boolean select = false;
  boolean RoomSwitch = false;
  boolean newItem = true;
  PVector itemSize = new PVector(100, 100);
  PVector position = new PVector (100,100);
  float itemWidth = 100;
  color itemColor;
  


  Items(PVector _position) {  
        position.set(PVector.add(_position,new PVector(100,100)));
        numItems = int(random(0, 10));
        itemNum = int(random(1, 6));
        itemStatus = 1;
    }
   
  

  void drawItems() {
      
      switch(items.itemNum) {
      case 1:
        itemStats.Koben();
        break;

      case 2:
        itemStats.Key();
        break;

      case 3:
        itemStats.Shoes();
        break;

      case 4:
        itemStats.Bat();
        break;

      case 5:
        itemStats.Chair();
        break;

      case 6:
        itemStats.Computer();
        break;
      }
  }

  void detectItems () {
      if (dist(player.position.x, player.position.y, position.x, position.y)  <  itemWidth) {
        fill(0);
        text("e to pick up", 200, 300);
        itemStatus = 2;
      }
    }
  }
