Items items = new Items();
  Shooter shooter;
  Player player;
  
void setup()
{
  background(150);
  size(1000, 750);
  frameRate(60);
  
  PlayScreen = new PlayScreen();
  OptionsScreen = new OptionsScreen();
  TextDisplayScreen = new TextDisplayScreen();

  items.RoomSwitch = true;
  items.randomNumber = true;
    
    items.spawnItems();
    println(items.numItems);
    println(items.itemNum);

  shooter = new Shooter(500,500,10,10,10);
  for(int i = 0; i < 100; i++){
    bots.add(new Bots(400,400,random(2)-1,random(2)-1,10));
  }
  player = new Player(500,500,0,0,20);

}

void draw()
{

  background(150);  
  //Skærm indeling
  
  PlayScreen.Draw();
  OptionsScreen.Draw();
  TextDisplayScreen.Draw();
  
  //bots
  for(int i = 0; i < bots.size(); i++){ 
  bots.get(i).randomMovement();
  bots.get(i).movement();
  bots.get(i).drawBot();
  }
  
  //Hr. shooter
  shooter.drawShooter(); //<>//
  if(0<bots.size()){
  shooter.movement(player.location.x,player.location.y,bots.get(0).botSum(shooter.location.x,shooter.location.y));
  }
  shooter.shoot();
  
 
  //bullet
  for(int i = 0; i < bullets.size(); i++){
  bullets.get(i).drawBullet();
  bullets.get(i).updateLocation();
  bullets.get(i).hit();
  }
}
