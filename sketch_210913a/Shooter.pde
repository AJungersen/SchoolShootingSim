class Shooter extends Player {
 
 Shooter(float x, float y,float v,float u,int s){
   location.set(x,y);
   velocity.set(v,u);
   size.set(s);
 }
 
 void drawShooter(){
   fill(255,0,0);
   circle(location.x,location.y,size);
 }
 void movement(float x,float y){//input player position
   velocity.add((x-location.x)/1000,(y-location.y)/1000);
   velocity.add(botSum);
   location.add(velocity);
 }
 void shoot(){
   
 }
}
