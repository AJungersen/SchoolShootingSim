class Shooter extends Player {

 Shooter(PVector p,PVector v,int s){
   super(p,v,s);
   position.set(p);
   velocity.set(v);
   size = s;
 }
 
 void drawShooter(){
   fill(255,0,0);
   stroke(255,0,0);
   circle(position.x,position.y,size);
 }
 void movement(float x,float y){//input player position
 if(invis == false){
   velocity.set((x-position.x)/25,(y-position.y)/25);
 }
   if(0<bots.size()){
   velocity.add(bots.get(0).botSum(shooter.position.x,shooter.position.y));
   }
   position.add(velocity.mult(0.3));
 }
 void shoot(){
   if(frameCount%(80/gameDif)==0){
     PVector closestBlob = new PVector();
     float d = 1000;
     for(int i=0; i<bots.size();i++){
      if(sqrt(pow(bots.get(i).position.x-position.x,2)+pow(bots.get(i).position.y-position.y,2))<d){
       closestBlob.set(bots.get(i).position.x-position.x,bots.get(i).position.y-position.y);
       d = closestBlob.mag();
      }
     }
     if(dist(player.position.x,player.position.y,position.x,position.y)<d && invis==false){
      closestBlob.set(player.position.x-position.x,player.position.y-position.y);
     }
     if(closestBlob.mag() != 0){
     bullets.add(new Bullet(position.x,position.y,closestBlob.x/10,closestBlob.y/10));
     }
   }
 }
}
