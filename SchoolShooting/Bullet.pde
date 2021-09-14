class Bullet {
 PVector location = new PVector();
 PVector velocity = new PVector();
 float size;
 
 Bullet(float x, float y, float v, float u, float s){
   location.set(x,y);
   velocity.set(v,u);
   size = s;
 }
 void updateLocation(){
 location.add(velocity);  
 }
 void hit(){
   
 }
}
