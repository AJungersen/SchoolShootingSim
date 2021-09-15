ArrayList<Bullet> bullets = new ArrayList();
class Bullet {
 PVector location = new PVector();
 PVector velocity = new PVector();
 float size = 5;
 
 Bullet(float x, float y, float v, float u){
   location.set(x,y);
   velocity.set(v,u);
   velocity.normalize();
   velocity.mult(10);
 }
 void drawBullet(){
   fill(0);
  circle(location.x,location.y,size); 
 }
 
 void updateLocation(){
 location.add(velocity);
 }
 void hit(){
   
 }
}
