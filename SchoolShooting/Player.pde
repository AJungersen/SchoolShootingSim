ArrayList<Player> dots = new ArrayList();
class Player {
 PVector position = new PVector();
 PVector velocity = new PVector();
 float size;
 
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
         //insert game won
       }  else {
         //insert game lost
       }
     }
   }
  }
 
 void movement(){
    if(keyPressed==true){
     if(key == CODED){
       if(keyCode == UP){
         player.velocity.add(0,-10);
       }
       if(keyCode == DOWN){
         player.velocity.add(0,10);
       }
       if(keyCode == RIGHT){
         player.velocity.add(10,0);
       }
       if(keyCode == LEFT){
         player.velocity.add(-10,0);
       }
    }
 }
 position.add(velocity);
 velocity.set(0,0);
}
}
