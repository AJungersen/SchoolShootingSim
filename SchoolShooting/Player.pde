ArrayList<Player> dots = new ArrayList();
Player player;


class Player {
  PVector position;
  PVector velocity = new PVector();
  float size;
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
    stroke(0);
    strokeWeight(1);
    ellipseMode(CENTER);
    fill(0, 200, 0);
    ellipse(position.x, position.y, size, size);

    position.add(velocity);
    //player.velocity.set(0, 0);
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
}
