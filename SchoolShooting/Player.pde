ArrayList<Player> dots = new ArrayList();
class Player {
 PVector position = new PVector();
 PVector velocity = new PVector();
 float size;
 boolean speedBoost;
 
 Player(PVector p, PVector v, float s){
   position = p.copy();
   velocity = v.copy();
   size = s;
   
  }
 
 void drawPlayer(){
   fill(0,200,0);
   circle(position.x,position.y,size);
 }
 
 void strike(){
 if(keyPressed == true){
     if(key == ' '){
       if(random(10)>6){
         vicScreen.won = true;
       }  else {
         vicScreen.lost = true;
       }
     }
   }
  }
 
 void bodyBlock(){
  for(int i = 0; i < bots.size(); i++){
   if(PVector.sub(bots.get(i).position,position).mag()<(bots.get(i).size+size)/2){
     velocity.add(PVector.sub(position,bots.get(i).position).normalize().mult(4));
     bots.get(i).velocity.add(PVector.sub(bots.get(i).position,position).normalize().mult(4));
   }
  }
 }
 
 void movement(){
    if(keyPressed==true){
     if(key == CODED){
       if(keyCode == UP){
         player.velocity.add(0,-10);
       }
     }
    }
    if(keyPressed==true){
     if(key == CODED){
       if(keyCode == DOWN){
         player.velocity.add(0,10);
       }
     }
    }
     if(keyPressed==true){
     if(key == CODED){
       if(keyCode == RIGHT){
         player.velocity.add(10,0);
       }
     }
   }
       if(keyPressed==true){
     if(key == CODED){
       if(keyCode == LEFT){
         player.velocity.add(-10,0);
       }
      }
    }
 }
 if(speedBoost == true) {
  velocity.mult(1.5); 
 }
 position.add(velocity);
 velocity.set(0,0);
}
}
