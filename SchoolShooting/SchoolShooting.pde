Items items = new Items();

void setup()
{
  background(150);
  Shooter shooter;
  void setup() {
  size(1000, 750);
  frameRate(144);
  
  PlayScreen = new PlayScreen();
  OptionsScreen = new OptionsScreen();
  TextDisplayScreen = new TextDisplayScreen();

  items.RoomSwitch = true;
  items.randomNumber = true;
    
    items.spawnItems();
    println(items.numItems);
    println(items.itemNum);

  shooter = new Shooter(500,500,10,10,10);

}

void draw()
{

  background(150);  
  //Skærm indeling
  PlayScreen.Draw();
  OptionsScreen.Draw();
  TextDisplayScreen.Draw();
  
  //Hr. shooter
  shooter.drawShooter();
  shooter.movement();
  shooter.shoot();
  
  /*
  for(int i = 0; i < bots.size(); i++){
  bots.add(new Bots(1,1,1,1,1)); 
  bots.add(bots.randomMovement();
  bots.get(i) = bots.movement();
  bots.get(i) = bots.drawBot();
  
  }*/
 }
