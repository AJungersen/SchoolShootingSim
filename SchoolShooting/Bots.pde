ArrayList<Bots> bots = new ArrayList();
class Bots extends Player {

  
  
 Bots(PVector p, PVector v, float s){
   super(p, v, s);
   position.set(p);
   velocity.set(v);
   size = s;
   
   players.add(this);
   }
 
 void drawBot(){
   fill(150);
   circle(position.x,position.y,size);
   }
 void movement(){
   velocity.normalize();
   velocity.mult(1);
   position.add(velocity);
  }
  
 PVector botSum(float x,float y){//input Shooter location
 PVector calcVector = new PVector();
 PVector botsum = new PVector(0,0);
   for(int i = 0; i < bots.size(); i++){ 
     calcVector.set(0,0);
     
     

     calcVector.add(bots.get(i).position.x-shooter.position.x,bots.get(i).position.y-shooter.position.y);
     calcVector.div(1+pow(dist(bots.get(i).position.x,shooter.position.x,bots.get(i).position.y,shooter.position.y),2));

     botsum.add(calcVector);
   }
   botsum.normalize();
   botsum.mult(10);
  return botsum;
 }
  void randomMovement(int i){
    velocity.set((random(2)-1)*random(0.5, 2),(random(2)-1)*random(0.5, 2));
    for(int j = 0; j < bots.size();j++){
    if(dist(position.x,position.y,bots.get(j).position.y,bots.get(j).position.y)<10){
      velocity.add(PVector.sub(bots.get(j).position,position).mult(0.2));
      }
    }
  }
  
  void flee(){
    if(PVector.sub(shooter.position,position).mag()<1000){
    velocity.add(PVector.sub(position,shooter.position).mult(0.2));
    }
  }
}
