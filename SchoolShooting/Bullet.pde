ArrayList<Bullet> bullets = new ArrayList();
class Bullet {
 PVector location = new PVector();
 PVector velocity = new PVector();
 float size = 5;
 
 Bullet(float x, float y, float v, float u){
   location.set(x,y);
   velocity.set(v,u);
   velocity.normalize();
   velocity.mult(20);
   
   //players.add(this);
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
    if(dist(bots.get(i).position.x,bots.get(i).position.y,location.x,location.y)<((size+bots.get(0).size)/2)){
     bots.remove(i);
     bullets.remove(this);
     if(velocity.mag()==0){
     bullets.remove(this);
     }
    }
   }
   if(dist(player.position.x,player.position.y,location.x,location.y)<((size+player.size)/2)){
     vicScreen.lost = true;
   }
 }
}
