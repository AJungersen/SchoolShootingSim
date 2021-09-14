void setup()
{
  
  size(1000, 750);
  frameRate(60);
  
  PlayScreen = new PlayScreen();
  CaracterDisplayScreen = new CaracterDisplayScreen();
  OptionsScreen = new OptionsScreen();
  TextDisplayScreen = new TextDisplayScreen();
  
  DefaultBigRoom = new BigRoom();
  Hallway = new Hallway();
  
  BigRoom1_156RightSide = new BigRoom(0, DefaultBigRoom.ySize/2, 100, "Right");
  BigRoom1_156LeftSide = new BigRoom(PlayScreen.xSize, DefaultBigRoom.ySize/2, 100, "Left");
  
  Classroom1_119 = new Classroom();
  Classroom1_121 = new Classroom();
  
  Player = new Player(PlayScreen.xSize - 75, PlayScreen.ySize - 75, 50);
  
}

void draw()
{
  background(150);
  
  //Skærm indeling
  PlayScreen.Draw();
  CaracterDisplayScreen.Draw();
  OptionsScreen.Draw();
  TextDisplayScreen.Draw();
  
  //Player
  Player.Draw();
  Player.Movemnet();
  
  //Hallways
  Hallway1_1();
  Hallway1_2();
  
  //Rooms
  Room1_156RightSide();
  Room1_156LeftSide();
  
  //Classroooms
  Classroom1_119();
  Classroom1_121();
}
