arrayList 
class Bots {
 PVector location = new PVector();
 PVector velocity = new PVector();
 float size;
 
 Bots((x,y),(v,u),s){
   location.set(x,y);
   velocity.set(v,u);
   size.set(s);
 }
 
 void drawBot(){
   fill(150);
   circle(location.x,location.y,size);
 }
 void movement(){
   location.add(velocity);
 }
 void botSum(x,y){//input Shooter location
 
 }
}
