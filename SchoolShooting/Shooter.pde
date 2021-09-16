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
   velocity.set((x-position.x)/10,(y-position.y)/10);
   if(0<bots.size()){
   velocity.add(bots.get(0).botSum(shooter.position.x,shooter.position.y));
   }
   position.add(velocity.mult(0.5));
 }
 void shoot(){
   if(frameCount%5==0){
     PVector closestBlob = new PVector();
     float d = 1000;
     for(int i=0; i<bots.size();i++){
      if(sqrt(pow(bots.get(i).position.x-position.x,2)+pow(bots.get(i).position.y-position.y,2))<d){
       closestBlob.set(bots.get(i).position.x-position.x,bots.get(i).position.y-position.y);
      }
     }
     if(closestBlob.mag() != 0){
     bullets.add(new Bullet(position.x,position.y,closestBlob.x/10,closestBlob.y/10));
     }
   }
 }
}
