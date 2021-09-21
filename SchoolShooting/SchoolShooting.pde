Items items; //<>// //<>// //<>//
Shooter shooter;
Player player;
VicScreen vicScreen = new VicScreen();
ItemStats itemStats = new ItemStats();


void setup()
{
  background(150);
  size(1000, 750);
  frameRate(60);

  playScreen = new PlayScreen();
  optionsScreen = new OptionsScreen();
  textDisplayScreen = new TextDisplayScreen();

  items = new Items(new PVector(0,0));
  shooter = new Shooter(new PVector(1500, 1500),new PVector(10, 10), 25);//i thnik thids migth lock the shooter to a specific position. idk if it's meant as temporarily
  for (int i = 0; i < 100; i++) {
    bots.add(new Bots(new PVector(400, 400), new PVector(random(2)-1, random(2)-1), 20));//considering whether we should put the player and students inside the classrooms instead of generation bots randomly
  }
  //player = new Player(new PVector(500, 500),new PVector(0, 0), 20);
  
  
  DefaultBigRoom = new BigRoom();
  hallway = new Hallway();
  
  BigRoom1_156RightSide = new BigRoom(new PVector(0, DefaultBigRoom.size.y/2) , 100, DoorPlacement.right, RoomPlacement.right);
  BigRoom1_156LeftSide = new BigRoom(new PVector(playScreen.size.x, DefaultBigRoom.size.y/2), 100, DoorPlacement.left, RoomPlacement.left);
  
  Classroom1_119 = new Classroom();
  Classroom1_121 = new Classroom();
  
  player = new Player(new PVector(playScreen.size.x - 75, playScreen.size.y - 75), new PVector(0, 0), 25);
  //vicScreen.won = true;
  
  
  begin = millis(); 
}

void draw()
{
  if(vicScreen.won == true || vicScreen.lost == true){
    //pushMatrix();//activate when activating vicscreen //<>// //<>//
  }
background(150); //<>// //<>// //<>// //<>//
  //Skærm indeling //<>// //<>//
 //<>// //<>// //<>// //<>//
  playScreen.Draw(); //<>// //<>// //<>//
  optionsScreen.Draw(); //<>// //<>// //<>//
  textDisplayScreen.Draw();  //<>// //<>// //<>// //<>//

  vicScreen.totalTime(); //<>// //<>//

  pushMatrix(); //<>// //<>//
  translate(-player.position.copy().x+width/2, -player.position.copy().y+height/2); //<>// //<>// //<>// //<>// //<>//

  //PlayScreen
  playScreen.Draw();
  
  //Hallways
  Hallway1_1();
  Hallway1_2();
  
  //Rooms
  Room1_156RightSide();
  Room1_156LeftSide();
  
  //Classroooms
  Classroom1_119();
  Classroom1_121();
  
  if(vicScreen.won == false && vicScreen.lost == false){
  player.drawPlayer();
  player.movement();
  if(PVector.sub(player.position,shooter.position).mag()<20){
  player.strike();
  }
  
  //bots
  for(int i = 0; i < bots.size(); i++){ 
  bots.get(i).randomMovement(i);
  bots.get(i).flee();
  bots.get(i).movement();
  bots.get(i).drawBot();
  }
  //Hr. shooter
  shooter.drawShooter();
  shooter.movement(player.position.x,player.position.y);
//  shooter.shoot();
 
  //bullet
  for(int i = 0; i < bullets.size(); i++){
  bullets.get(i).drawBullet();
  bullets.get(i).updateLocation();
  bullets.get(i).hit();
  }
  for(int i = 0; i < itemList.size(); i++){
  if(itemList.get(i).newItem == true) {
  itemList.get(i).detectItems();
  }
  }
  for(int i = 0; i < itemList.size(); i++){
    if(itemList.get(i).itemStatus !=3){
  itemList.get(i).drawItems();
    }
  } //<>//
  }
  popMatrix();
  
  //Skærm indeling
  playScreen.Draw();
  optionsScreen.Draw();
  textDisplayScreen.Draw();  //<>// //<>//
  textDisplayScreen.Draw();
  
   for(int i = 0; i < itemList.size(); i++){
 if(itemList.get(i).itemStatus == 3){
  itemList.get(i).newItem = false;
  itemList.get(i).position.set( (textDisplayScreen.Position.y)-(itemList.get(i).itemSize.y/2),(textDisplayScreen.Position.x)-itemList.get(i).itemSize.x+10);
  itemList.get(i).drawItems();
  }
   }
  if(vicScreen.won == true){
    vicScreen.drawVicScreen();
      } else if(vicScreen.lost == true){
        vicScreen.drawDeathScreen();
      }
    }
    
    
  void keyPressed() {
    for(int i = 0; i < itemList.size(); i++){
   if(itemList.get(i).itemStatus == 2){
    if(key == 'e') {
    println("pickup succes");
    //println("dist" + dist(player.position.x, player.position.y, itemList.get(i).position.x, itemList.get(i).position.y));
    //println(items.itemWidth);
    itemList.get(i).itemStatus = 3;   
    println(itemList.get(i).itemStatus);
    }
   }
    }
  }
