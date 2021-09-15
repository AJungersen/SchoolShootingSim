ArrayList<Bots> bots = new ArrayList();
class Bots extends Player {

 Bots(float x,float y,float v,float u,float s){
   super(x, y, v, u, s);
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
 PVector botSum(float x,float y){//input Shooter location
 PVector calcVector = new PVector();
 PVector botsum = new PVector();
   for(int i = 0; i < bots.size(); i++){ 
     calcVector.set(0,0);
     calcVector.add((bots.get(i).location.x-shooter.location.x),bots.get(i).location.y-shooter.location.y);
     calcVector.div(pow(dist(bots.get(i).location.x,shooter.location.x,bots.get(i).location.y,shooter.location.y),2));
     botsum.add(calcVector);
   }
   botsum.div(bots.size()*100);
  return botsum;
 }
  void randomMovement(){
    velocity.x = (random(2)-1)*random(0.1, 1);
    velocity.y = (random(2)-1)*random(0.1, 1);
  }
}
