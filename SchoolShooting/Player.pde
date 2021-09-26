ArrayList<Player> dots = new ArrayList();
Player player;
Player player2;

class Player {
  PVector position = new PVector();
  PVector velocity = new PVector();
  float size;
  boolean smallSpeedBoost, bigSpeedBoost, noSpeedBoost;
  int hitChance;
  int hallwayImIn = 1;
  
  String roomImIn = "none";  

  Player(PVector p, PVector v, float s) {
    position = p.copy();
    velocity = v.copy();
    size = s;
    hitChance = 4;
    
    players.add(this);    
  }

  void drawPlayer() {
    fill(0, 200, 0);
    circle(position.x, position.y, size);
  }

  void strike() {
    if (keyPressed == true) {
      if (key == ' ') {
        if (random(10)<hitChance) {
          vicScreen.won = true;
        } else {
          vicScreen.lost = true;
        }
      }
    }
  }

  void bodyBlock() {
    for (int i = 0; i < bots.size(); i++) {
      if (PVector.sub(bots.get(i).position, position).mag()<(bots.get(i).size+size)/2) {
        velocity.add(PVector.sub(position, bots.get(i).position).normalize().mult(8));
        bots.get(i).velocity.add(PVector.sub(bots.get(i).position, position).normalize().mult(8));
      }
    }
  }

  void movement() {
    if (keyPressed==true) {
      if (key == CODED) {
        if (keyCode == UP) {
          player.velocity.add(0, -10);
        }
      }
    }
    if (keyPressed==true) {
      if (key == CODED) {
        if (keyCode == DOWN) {
          player.velocity.add(0, 10);
        }
      }
    }
    if (keyPressed==true) {
      if (key == CODED) {
        if (keyCode == RIGHT) {
          player.velocity.add(10, 0);
        }
      }
    }
    if (keyPressed==true) {
      if (key == CODED) {
        if (keyCode == LEFT) {
          player.velocity.add(-10, 0);
        }
      }
    }

    if (smallSpeedBoost == true) {
      velocity.mult(1.5);
    }
    if (bigSpeedBoost == true) {
      velocity.mult(2);
    }
    if (noSpeedBoost == true) {
      velocity.mult(0.5);
    }
    position.add(velocity);
    velocity.set(0, 0);
  }
}
