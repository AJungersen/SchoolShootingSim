void setup()
{
  size(1000, 750);
  frameRate(60);
  
  PlayScreen = new PlayScreen();
  CaracterDisplayScreen = new CaracterDisplayScreen();
  OptionsScreen = new OptionsScreen();
  TextDisplayScreen = new TextDisplayScreen();
  
  
}

void draw()
{
  background(150);
  
  //Skærm indeling
  PlayScreen.Draw();
  CaracterDisplayScreen.Draw();
  OptionsScreen.Draw();
  TextDisplayScreen.Draw();
  
 
}
