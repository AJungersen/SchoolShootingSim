class Shooter extends Player {

 Shooter(float x, float y,float v,float u,int s){
   super(x,y,v,u,s);
   location.set(x,y);
   velocity.set(v,u);
   size = s;
 }
 
 void drawShooter(){
   fill(255,0,0);
   circle(location.x,location.y,size);
 }
 void movement(float x,float y){//input player position
   velocity.add((x-location.x)/1000,(y-location.y)/1000);
   //velocity.add(botSum);
   location.add(velocity);
 }
 void shoot(){
   if(frameCount%144==0){
     PVector closestBlob = new PVector();
     float d = 1000000;
     for(int i=0; i<bots.size();i++){
      d = bots[i].location.x+bots[i].location.y;
      
     }
     bullets.add(new Bullet(location.x,location.y,
   }
 }
 }
}
