Items items = new Items();
Shooter shooter;
Player player;

void setup()
{
  background(150);
  size(1000, 750);
  frameRate(60);

  playScreen = new PlayScreen();
  optionsScreen = new OptionsScreen();
  textDisplayScreen = new TextDisplayScreen();

  items.RoomSwitch = true;
  items.select = true;


  shooter = new Shooter(new PVector(500, 500),new PVector(10, 10), 10);
  for (int i = 0; i < 100; i++) {
    bots.add(new Bots(new PVector(400, 400), new PVector(random(2)-1, random(2)-1), 10));
  }
  player = new Player(new PVector(500, 500),new PVector(0, 0), 20);
  
  playScreen = new PlayScreen();
  optionsScreen = new OptionsScreen();
  textDisplayScreen = new TextDisplayScreen();
  
  DefaultBigRoom = new BigRoom();
  hallway = new Hallway();
  
  BigRoom1_156RightSide = new BigRoom(new PVector(0, DefaultBigRoom.size.y/2) , 100, DoorPlacement.right, RoomPlacement.right);
  BigRoom1_156LeftSide = new BigRoom(new PVector(playScreen.size.x, DefaultBigRoom.size.y/2), 100, DoorPlacement.left, RoomPlacement.left);
  
  Classroom1_119 = new Classroom();
  Classroom1_121 = new Classroom();
  
  player = new Player(new PVector(playScreen.size.x - 75, playScreen.size.y - 75), new PVector(0, 0), 50);
}

void draw()
{
background(150);
  //Skærm indeling

  playScreen.Draw();
  optionsScreen.Draw();
  textDisplayScreen.Draw(); //<>//
  
  pushMatrix();
  translate(-player.position.copy().x+width/2, -player.position.copy().y+height/2);
  
  //PlayScreen
  //playScreen.Draw();
  
  //Player
  player.drawPlayer();
  //Player.Movemnet();
  
  //Hallways
  Hallway1_1();
  Hallway1_2();
  
  //Rooms
  Room1_156RightSide();
  Room1_156LeftSide();
  
  //Classroooms
  Classroom1_119();
  Classroom1_121();
  
  popMatrix();
  
  player.drawPlayer();
  player.movement();
  
  //bots
  for(int i = 0; i < bots.size(); i++){ 
  bots.get(i).randomMovement(i);
  bots.get(i).movement();
  bots.get(i).drawBot();
  bots.get(i).flee(i);
  }
  //Hr. shooter
  shooter.drawShooter(); //<>// //<>//
  if(0<bots.size()){
  shooter.movement(player.position.x,player.position.y,bots.get(0).botSum(shooter.position.x,shooter.position.y));
  }
  shooter.shoot();
   //<>//
 
  //bullet
  for(int i = 0; i < bullets.size(); i++){ //<>//
  bullets.get(i).drawBullet();
  bullets.get(i).updateLocation();
  bullets.get(i).hit();
  }
  
  items.spawnItems();
  items.detectItems();
    }
