class Shooter extends Player {

 Shooter(float x, float y,float v,float u,int s){
   super(x,y,v,u,s);
   location.set(x,y);
   velocity.set(v,u);
   size = s;
 }
 
 void drawShooter(){
   fill(255,0,0);
   stroke(255,0,0);
   circle(location.x,location.y,size);
 }
 void movement(float x,float y,PVector botSum){//input player position
   velocity.set((x-location.x)/1000,(y-location.y)/1000);
   velocity.add(botSum);
   location.add(velocity);
 }
 void shoot(){
   if(frameCount%5==0){
     PVector closestBlob = new PVector();
     float d = 1000;
     for(int i=0; i<bots.size();i++){
      if(sqrt(pow(bots.get(i).location.x-location.x,2)+pow(bots.get(i).location.y-location.y,2))<d){
       closestBlob.set(bots.get(i).location.x-location.x,bots.get(i).location.y-location.y);
      }
     }
     bullets.add(new Bullet(location.x,location.y,closestBlob.x/10,closestBlob.y/10));
   }
 }
}
