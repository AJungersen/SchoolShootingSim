ArrayList<Bots> bots = new ArrayList();
class Bots extends Player {
  PVector temporaryWall = new PVector(width,0);
  
  
 Bots(PVector _position, PVector _velocity, float _size){
   super(_position, _velocity, _size);
   position.set(x,y);
   velocity.set(v,u);
   size = s;
   }
 
 void drawBot(){
   fill(150);
   circle(position.x,position.y,size);
   }
 void movement(){
   position.add(velocity);
  }
 PVector botSum(float x,float y){//input Shooter location
 PVector calcVector = new PVector();
 PVector botsum = new PVector();
   for(int i = 0; i < bots.size(); i++){ 
     calcVector.set(0,0);

     calcVector.add(bots.get(i).position.x-shooter.position.x,bots.get(i).position.y-shooter.position.y);
     calcVector.div(1+pow(dist(bots.get(i).position.x,shooter.position.x,bots.get(i).position.y,shooter.position.y),2));

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
      if(dist(shooter.position.x,shooter.position.y,bots.get(i).position.x,bots.get(i).position.y)<10000){
        for(int j = 0; j < 1000;j++){
          if(bots.get(i).position.x!=temporaryWall.x && shooter.position.x<bots.get(i).position.x){
            bots.get(i).position.x += 0.01;
          } else if(bots.get(i).position.x!=temporaryWall.x){
            bots.get(i).position.x -= 0.01;
          }
          if(bots.get(i).position.y!=temporaryWall.y && shooter.position.y<bots.get(i).position.y){
            bots.get(i).position.y += 0.01;
        } else if(bots.get(i).position.y!=temporaryWall.y){
          bots.get(i).position.y -= 0.01;
        }
      }
    }
  }
}
