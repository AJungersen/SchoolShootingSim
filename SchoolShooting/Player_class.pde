boolean shoeSpeedBoost, chairSpeedBoost, bagpackSpeedBoost;
void keyPressed() {
  for (int i = 0; i < itemList.size(); i++) {
    if (itemList.get(i).itemStatus == 2) {
      if (key == 'e') {
        itemList.get(i).itemStatus = 3;   
        begin = millis();
      }
    }
  }

  if (key == 'w')
  {
    player.velocity.y = -10;
    
  }

  if (key == 's')
  {
    player.velocity.y = 10;
  }

  if (key == 'a')
  {
    player.velocity.x = -10;
  }

  if (key == 'd')
  {
    player.velocity.x = 10;
  }

  if (shoeSpeedBoost == true) {
    player.velocity.mult(1.5);
    println(player.velocity);
  }
  if (chairSpeedBoost == true) {
    player.velocity.mult(0.2);
    println(player.velocity);
  }
  if (bagpackSpeedBoost == true) {
    player.velocity.mult(0.5);
    println(player.velocity);
  }

}

void keyReleased() {
  if (key == 'w')
  {
    player.velocity.y = 0;
  }

  if (key == 's')
  {
    player.velocity.y = 0;
  }

  if (key == 'a')
  {
    player.velocity.x = 0;
  }

  if (key == 'd')
  {
    player.velocity.x = 0;
  }
}
