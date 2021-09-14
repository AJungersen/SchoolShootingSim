class Shooter {
 PVector location = new PVector();
 PVector velocity = new PVector();
 float size;
 
 Shooter((x,y),(v,u),s){
   location.set(x,y);
   velocity.set(v,u);
   size.set(s);
 }
 
 void drawShooter(){
   fill(255,0,0);
   circle(location.x,location.y,size);
 }
 void movement(x,y){//input player position
   velocity.add((x-location.x)/1000,(y-location.y)/1000);
   velocity.add(botSum);
   location.add(velocity);
 }
}
