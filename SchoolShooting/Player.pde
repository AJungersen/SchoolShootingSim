ArrayList<Player> dots = new ArrayList();
class Player {
 PVector location = new PVector();
 PVector velocity = new PVector();
 float size;
 
 Player(float x,float y,float v,float u,float s){
   location.set(x,y);
   velocity.set(v,u);
   size = s;
   
  }
 
 void drawPlayer(){
   fill(0,200,0);
   circle(location.x,location.y,size);
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
         player.velocity.add(-10,0);
       }
       if(keyCode == LEFT){
         player.velocity.add(10,0);
       }
    }
 }
}
}
