class Bots extends Player {
 PVector location = new PVector();
 PVector velocity = new PVector();
 float size;
 
 Bots(float x, float y, float v, float u, float s){
   location.set(x,y);
   velocity.set(v,u);
   size = s;
 }
 
 void drawBot(){
   fill(150);
   circle(location.x,location.y,size);
 }
 void movement(){
   location.add(velocity);
 }
 void botSum(float x, float y){//input Shooter location
 
 }
}
