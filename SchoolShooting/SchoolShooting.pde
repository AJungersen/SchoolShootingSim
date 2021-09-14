  Shooter shooter;
  void setup() {
  size(1000, 750);
  frameRate(144);
  
  PlayScreen = new PlayScreen();
  OptionsScreen = new OptionsScreen();
  TextDisplayScreen = new TextDisplayScreen();
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
 
}
