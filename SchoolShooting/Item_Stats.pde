int begin; 
int duration = 20;
int time = 20;
class ItemStats {

  void Backpack() {
    if (items.itemNum == 1) {
      items.itemColor =  color(255, 0, 0);
      fill(items.itemColor);
      image(backpack, items.position.x-45, items.position.y-45);

      //--------------------------//
      //Spilleren løber langsommere//
      for (int i = 0; i < itemList.size(); i++) {
        if (itemList.get(i).itemStatus == 3) {  
          if (time >= 0) {  
            time = duration - (millis() - begin)/1000;
            rectMode(CORNERS);
            rect(990, 740, 960, 625-(duration - (millis() - begin)/280));
            bagpackSpeedBoost = true;  
            fill(0);
            textSize(20);
            text("A leftbehind backpack...", (textDisplayScreen.Position.y)-(itemList.get(i).itemSize.y/2)+20, (textDisplayScreen.Position.x)-itemList.get(i).itemSize.x-70); 
            text("Might be usefull later, but will", (textDisplayScreen.Position.y)-(itemList.get(i).itemSize.y/2)+20, (textDisplayScreen.Position.x)-itemList.get(i).itemSize.x-50);
            text("just slow you down for now", (textDisplayScreen.Position.y)-(itemList.get(i).itemSize.y/2)+20, (textDisplayScreen.Position.x)-itemList.get(i).itemSize.x-30);
            return;
          }
          bagpackSpeedBoost = false;
        }
      }
    }
  }
  void Key() {
    if (items.itemNum == 2) {
      items.itemColor = color(0, 255, 0);
      fill(items.itemColor);
      image(doorKey, items.position.x-50, items.position.y-25);
      //---------------------------//
      //Åbner specifikke døre//
      fill(0);
      textSize(20);
      text("A mysterious key...", (textDisplayScreen.Position.y)-(items.itemSize.y/2)+20, (textDisplayScreen.Position.x)-items.itemSize.x-70); 
      text("Maybe it unlocks something?", (textDisplayScreen.Position.y)-(items.itemSize.y/2)+20, (textDisplayScreen.Position.x)-items.itemSize.x-50);
      text("Better to keep it with you for now", (textDisplayScreen.Position.y)-(items.itemSize.y/2)+20, (textDisplayScreen.Position.x)-items.itemSize.x-30);
    }
  }
  void Shoes() {
    if (items.itemNum == 3) {
      items.itemColor = color(0, 0, 255);
      fill(items.itemColor);
      image(shoes, items.position.x-45, items.position.y-30);
      //---------------------------//
      //Player løber hurtigere//  
      for (int i = 0; i < itemList.size(); i++) {
        if (itemList.get(i).itemStatus == 3) {  
          if (time >= 0) {  
            time = duration - (millis() - begin)/1000;
            rectMode(CORNERS);
            rect(990, 740, 960, 625-(duration - (millis() - begin)/280));
            shoeSpeedBoost = true;   
            fill(0);
            textSize(20);
            text("A pair of used shoes...", (textDisplayScreen.Position.y)-(itemList.get(i).itemSize.y/2)+25, (textDisplayScreen.Position.x)-itemList.get(i).itemSize.x-70); 
            text("Don't confront your problems", (textDisplayScreen.Position.y)-(itemList.get(i).itemSize.y/2)+25, (textDisplayScreen.Position.x)-itemList.get(i).itemSize.x-50);
            text("just run from them", (textDisplayScreen.Position.y)-(itemList.get(i).itemSize.y/2)+25, (textDisplayScreen.Position.x)-itemList.get(i).itemSize.x-30);
            return;
          }
          shoeSpeedBoost = false;
        }
      }
    }
  }  
  void Bat() {
    if (items.itemNum == 4) {
      items.itemColor = color(254, 3, 255);
      fill(items.itemColor);  
      image(bat, items.position.x-45, items.position.y-45);
      //----------------------------//
      //Player kan slå shooter// 
      //dog men lav succesrate//
      for (int i = 0; i < itemList.size(); i++) {
        if (itemList.get(i).itemStatus == 3) {
          player.hitChance = player.hitChance+2;
          fill(0);
          textSize(20);
          text("A good ol' bat...", (textDisplayScreen.Position.y)-(itemList.get(i).itemSize.y/2)+20, (textDisplayScreen.Position.x)-itemList.get(i).itemSize.x-70); 
          text("A solid grip and a perfect fit for", (textDisplayScreen.Position.y)-(itemList.get(i).itemSize.y/2)+20, (textDisplayScreen.Position.x)-itemList.get(i).itemSize.x-50);
          text("whacking people over the head", (textDisplayScreen.Position.y)-(itemList.get(i).itemSize.y/2)+20, (textDisplayScreen.Position.x)-itemList.get(i).itemSize.x-30);
        }
      }
    }
  }  
  void Chair() {
    if (items.itemNum == 5) {
      items.itemColor = color(254, 255, 3);
      fill(items.itemColor);
      image(chair, items.position.x-45, items.position.y-45);
      //------------------------------------//
      //Player bevæger sig langsommere//
      //men kan slå shooter med høj succesrate// 
      for (int i = 0; i < itemList.size(); i++) {
        if (itemList.get(i).itemStatus == 3) {
          if (time >= 0) {  
            time = duration - (millis() - begin)/1000;
            rectMode(CORNERS);
            rect(990, 740, 960, 625-(duration - (millis() - begin)/280));
            chairSpeedBoost = true;   
            player.hitChance = player.hitChance+4;
            fill(0);
            textSize(20);
            text("A standard chair...", (textDisplayScreen.Position.y)-(itemList.get(i).itemSize.y/2)+30, (textDisplayScreen.Position.x)-itemList.get(i).itemSize.x-70); 
            text("A bit on the heavy side", (textDisplayScreen.Position.y)-(itemList.get(i).itemSize.y/2)+30, (textDisplayScreen.Position.x)-itemList.get(i).itemSize.x-50);
            text("but delivers a solid smack", (textDisplayScreen.Position.y)-(itemList.get(i).itemSize.y/2)+30, (textDisplayScreen.Position.x)-itemList.get(i).itemSize.x-30);
            return;
          }
          chairSpeedBoost = false;
        }
      }
    }
  }
  void Camohat() {
    if (items.itemNum == 6) {
      items.itemColor = color(2, 254, 255);
      fill(items.itemColor);
      image(cap, items.position.x-45, items.position.y-30);
      //---------------------------------------//
      //Gør spilleren usynlig i en periode//
      for (int i = 0; i < itemList.size(); i++) {
        if (itemList.get(i).itemStatus == 3) {  
          if (time >= 0) {  
            time = duration - (millis() - begin)/1000;
            rectMode(CORNERS);
            rect(990, 740, 960, 625-(duration - (millis() - begin)/280));
            invis = true;  
            fill(0);
            textSize(20);
            text("A camo cap..?", (textDisplayScreen.Position.y)-(itemList.get(i).itemSize.y/2)+20, (textDisplayScreen.Position.x)-itemList.get(i).itemSize.x-70); 
            text("Blends so perfectly with the", (textDisplayScreen.Position.y)-(itemList.get(i).itemSize.y/2)+20, (textDisplayScreen.Position.x)-itemList.get(i).itemSize.x-50);
            text("surroundings, that whoever", (textDisplayScreen.Position.y)-(itemList.get(i).itemSize.y/2)+20, (textDisplayScreen.Position.x)-itemList.get(i).itemSize.x-30);
            text("wears it becomes invisible", (textDisplayScreen.Position.y)-(itemList.get(i).itemSize.y/2)+20, (textDisplayScreen.Position.x)-itemList.get(i).itemSize.x-10);
            return;
          }
          invis = false;
        }
      }
    }
  }
}
