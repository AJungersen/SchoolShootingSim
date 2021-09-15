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
   stroke(0);
  circle(location.x,location.y,size); 
 }
 
 void updateLocation(){
 location.add(velocity);
 }
 void hit(){
   for(int i = 0; i<bots.size(); i++){
    if(dist(bots.get(i).location.x,location.x,bots.get(i).location.y,location.y)<((size+bots.get(0).size)/2)){
     bots.remove(i);
     bullets.remove(this);
    }
   }
 }
}
