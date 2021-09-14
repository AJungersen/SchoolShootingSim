
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
 PVector botsum = new PVector();
   for(int i = 0; i < bots.size(); i++){ 
     
   }
  return botsum;
  
  void randomMovement(){
    velocity.x = (random(2)-1)*random(0.01, 1);
    velocity.y = (random(2)-1)*random(0.01, 1);
  }
  
  
}

