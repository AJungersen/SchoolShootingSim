ArrayList<Bots> bots = new ArrayList();
class Bots extends Player {
  PVector temporaryWall = new PVector(width,0);
  
  
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

     calcVector.add(bots.get(i).location.x-shooter.location.x,bots.get(i).location.y-shooter.location.y);
     calcVector.div(1+pow(dist(bots.get(i).location.x,shooter.location.x,bots.get(i).location.y,shooter.location.y),2));

     botsum.add(calcVector);
   }
   botsum.normalize();
   botsum.mult(5);
  return botsum;
 }
  void randomMovement(){
    velocity.x = (random(2)-1)*random(0.5, 2);
    velocity.y = (random(2)-1)*random(0.5, 2);
  }
  
  void flee(int i){
      if(dist(shooter.location.x,shooter.location.y,bots.get(i).location.x,bots.get(i).location.y)<10000){
        for(int j = 0; j < 1000;j++){
          if(bots.get(i).location.x!=temporaryWall.x && shooter.location.x<bots.get(i).location.x){
            bots.get(i).location.x += 0.01;
          } else if(bots.get(i).location.x!=temporaryWall.x){
            bots.get(i).location.x -= 0.01;
          }
          if(bots.get(i).location.y!=temporaryWall.y && shooter.location.y<bots.get(i).location.y){
            bots.get(i).location.y += 0.01;
        } else if(bots.get(i).location.y!=temporaryWall.y){
          bots.get(i).location.y -= 0.01;
        }
      }
    }
  }
}
