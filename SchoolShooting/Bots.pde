
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
 void botSum(float x,float y){//input Shooter location

  }
  
  void randomMovement(){
    velocity.x = random(0.01, 1);
    velocity.y = random(0.01, 1);
  }
  
  
}

