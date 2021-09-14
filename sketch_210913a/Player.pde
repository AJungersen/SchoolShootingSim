class Player {
 PVector location = new PVector();
 PVector velocity = new PVector();
 float size;
 
 Player((x,y),(v,u),s){
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
