class Items {
  //itemStatus: 1=not in range,  2=in range,  3=picked up
  int numItems, itemNum, itemStatus;
  boolean select = false;
  boolean RoomSwitch = false;
  boolean randomNumber = false;
  boolean newItem = true;
  PVector itemSize = new PVector(100, 100);
  PVector position = new PVector (100,100);
  float itemWidth = 100;
  color itemColor;
  

  void spawnItems() {
     
    if (RoomSwitch == true) {
      if (select == true) {
        numItems = int(random(0, 10));
        itemNum = int(random(1, 6));
        itemStatus = 1;
        randomNumber = true;
        select = false;
      }
    }
        if (numItems > 0) {
          items.drawItems();
          
        }
        if (numItems < 10) {
          randomNumber = false; 
        }
      }
   
  

  void drawItems() {
      
      switch(items.itemNum) {
      case 1:
        itemColor =  color(255, 0, 0);
       // println("koben");
        fill(itemColor);
        ellipse(position.x, position.y, itemSize.x, itemSize.y);
        break;

      case 2:
        itemColor = color(0, 255, 0);
      //  println("nøgle");
        fill(itemColor);
        ellipse(position.x, position.y, itemSize.x, itemSize.y);
        break;

      case 3:
        itemColor = color(0, 0, 255);
       // println("brugte løbesko");
        fill(itemColor);
        ellipse(position.x, position.y, itemSize.x, itemSize.y);
        break;

      case 4:
        itemColor = color(254, 3, 255);
      //  println("rundboldbat");
        fill(itemColor);
        ellipse(position.x, position.y, itemSize.x, itemSize.y);
        break;

      case 5:
        itemColor = color(254, 255, 3);
     //   println("stol");
        fill(itemColor);
        ellipse(position.x, position.y, itemSize.x, itemSize.y);
        break;

      case 6:
        itemColor = color(2, 254, 255);
      //  println("computer");
        fill(itemColor);
        ellipse(position.x, position.y, itemSize.x, itemSize.y);
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
