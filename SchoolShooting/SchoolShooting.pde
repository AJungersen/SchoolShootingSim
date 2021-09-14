Items items = new Items();

void setup()
{
  background(150);
  size(1000, 750);
  frameRate(60);
  
  PlayScreen = new PlayScreen();
  CaracterDisplayScreen = new CaracterDisplayScreen();
  OptionsScreen = new OptionsScreen();
  TextDisplayScreen = new TextDisplayScreen();

  
  items.RoomSwitch = true;
  items.randomNumber = true;
    
    items.spawnItems();
    println(items.numItems);
    println(items.itemNum);
}

void draw()
{

  
  //Skærm indeling
  //PlayScreen.Draw();
  //CaracterDisplayScreen.Draw();
  //OptionsScreen.Draw();
  //TextDisplayScreen.Draw();
  
  

}
