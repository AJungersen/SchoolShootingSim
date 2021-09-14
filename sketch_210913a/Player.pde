class Player {
 PVector location = new PVector();
 PVector velocity = new PVector();
 float size;
 
 Player(float x,float y,float v,float u,int s){
   location.set(x,y);
   velocity.set(v,u);
   size.set(s);
 }
 
 void drawPlayer(){
   fill(0,200,0);
   circle(location.x,location.y,size);
 }
 void movement(){
   
 }
}
