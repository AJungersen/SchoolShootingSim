Items items; //<>//
Shooter shooter;
VicScreen vicScreen = new VicScreen();
ItemStats itemStats = new ItemStats();
StartScreen startScreen = new StartScreen();
Table highScores;
boolean invis = false;
int timeStart;
TableRow newRow;
int gameDif = 0;

ArrayList <Player> players;
ArrayList <Hallway> hallways;

int x = 0;

int numberOfHallways = 32;

void setup()
{
  background(150);
  size(1000, 750);
  frameRate(100);
  
   players = new ArrayList<Player>();
  hallways = new ArrayList<Hallway>();

  playScreen = new PlayScreen();
  optionsScreen = new OptionsScreen();
  textDisplayScreen = new TextDisplayScreen();
  
  hallwayDefinetion();
  
  smallRoomDefinetion();
  mediumRoomDefinetion();
  bigRoomDefinetion();
  
  classroomDefinetion();

  player = new Player(new PVector(playScreen.size.x - 75, playScreen.size.y - 75), new PVector(0,0), 50);
  
  println("");
  for (int i = 0; i < hallways.size(); i++)
  {
    println(hallways.get(i).hallwayNumber, hallways.get(i).positionLeftCornerTop, hallways.get(i).positionRightCornerBottom);
  }
  
reset();
}

void draw(){
  println(player.hallwayImIn);  
  if(startScreen.gameplay==false){
    startScreen.drawStartScreen();
  }
if(startScreen.gameplay==true){
  if(vicScreen.won == true || vicScreen.lost == true){ 
    //pushMatrix();//activate when activating vicscreen 
  } 
  background(150); 
   //Check which hallway the diffrent players stand in
  pushMatrix();
  for (int i = 0; i < players.size(); i++)
  {
    if (players.get(i).velocity != new PVector(0, 0))
    {
      int hallwayToCheckArrayNumber = 0;
      int numberOfHallwaysChecked = 0;
      int hallwayImInArrayNumber = players.get(i).hallwayImIn - 1;
      do 
      {
        switch(numberOfHallwaysChecked)
        {
        case 0:
          if (hallwayImInArrayNumber == 0)
          {
            hallwayToCheckArrayNumber = ((hallwayImInArrayNumber + numberOfHallways) % (numberOfHallways + 1) -1);
          } else
          {
            hallwayToCheckArrayNumber = ((hallwayImInArrayNumber + numberOfHallways) % (numberOfHallways + 1));
          }
          break;

        case 1:
          hallwayToCheckArrayNumber = hallwayImInArrayNumber;
          break;

        case 2:
          if (hallwayImInArrayNumber == (numberOfHallways -1))
          {
            hallwayToCheckArrayNumber = ((hallwayImInArrayNumber + 1) % (numberOfHallways));
          } else
          {
            hallwayToCheckArrayNumber = ((hallwayImInArrayNumber + 1) % (numberOfHallways + 1));
          }
          break;
        }
        
        if (players.get(i).position.x > hallways.get(hallwayToCheckArrayNumber).positionLeftCornerTop.x && 
          players.get(i).position.y > hallways.get(hallwayToCheckArrayNumber).positionLeftCornerTop.y &&
          players.get(i).position.x < hallways.get(hallwayToCheckArrayNumber).positionRightCornerBottom.x &&
          players.get(i).position.y < hallways.get(hallwayToCheckArrayNumber).positionRightCornerBottom.y)
        {
          players.get(i).hallwayImIn = hallways.get(hallwayToCheckArrayNumber).hallwayNumber;
          break;
        }

        numberOfHallwaysChecked++;
      } 
      while (numberOfHallwaysChecked < 3);
    }
  }
  
  pushMatrix(); 
  translate(-player.position.copy().x+width/2, -player.position.copy().y+height/2); 

  //PlayScreen
  playScreen.Draw();
  
  //Hallways
  drawHallways();
  collisionChecks();
  popMatrix();  

  //Skærm indeling
  playScreen.Draw(); 
  optionsScreen.Draw(); 
  textDisplayScreen.Draw();  

if(vicScreen.won == false && vicScreen.lost == false){
  vicScreen.totalTime(); 
}
   //<>// //<>// //<>// //<>//
if(vicScreen.won == false && vicScreen.lost == false){ //<>// //<>//
  player.drawPlayer();  //<>// //<>// //<>//
  player.bodyBlock(); //<>// //<>//
  if(PVector.sub(player.position,shooter.position).mag()<30){  //<>// //<>//
  player.strike();  //<>//
  }  //<>//
  
  //bots  //<>//
  for(int i = 0; i < bots.size(); i++){  //<>//
  bots.get(i).randomMovement(i);  //<>//
  bots.get(i).flee();
  bots.get(i).movement();
  bots.get(i).drawBot();
  }
  //Hr. shooter
  shooter.drawShooter();
  shooter.movement(player.position.x,player.position.y);
  shooter.shoot();
 
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
  } 
  }
  popMatrix();
  
  //Skærm indeling
  playScreen.Draw();
  optionsScreen.Draw();
  textDisplayScreen.Draw(); 
  textDisplayScreen.Draw();
  
   for(int i = 0; i < itemList.size(); i++){
 if(itemList.get(i).itemStatus == 3){
  itemList.get(i).newItem = false;
  itemList.get(i).position.set( (textDisplayScreen.Position.y)-(itemList.get(i).itemSize.y/2),(textDisplayScreen.Position.x)-itemList.get(i).itemSize.x+10);
  items.position.set(itemList.get(i).position);
  itemList.get(i).drawItems();
  }
   }
  if(vicScreen.won == true){
    vicScreen.drawVicScreen();
      } else if(vicScreen.lost == true){ //<>//
        vicScreen.drawDeathScreen(); 
    }
}
}
   //<>// //<>// //<>//
void reset(){   //<>//
  startScreen.gameplay = false;
  timeStart = millis()/1000;
  playScreen = new PlayScreen();
  optionsScreen = new OptionsScreen();
  textDisplayScreen = new TextDisplayScreen();
  highScores = loadTable("gameHighScores.csv", "header");
  highScores.addColumn("name");
  highScores.addColumn("minutes");
  highScores.addColumn("seconds");
  newRow = highScores.addRow();
  

  items = new Items(new PVector(0,0));
  shooter = new Shooter(new PVector(1500, 1500),new PVector(10, 10), 25);//i thnik thids migth lock the shooter to a specific position. idk if it's meant as temporarily
  for (int i = 0; i < 100; i++) {
    bots.add(new Bots(new PVector(400, 400), new PVector(random(2)-1, random(2)-1), 20));//considering whether we should put the player and students inside the classrooms instead of generation bots randomly
  }
      
  player = new Player(new PVector(playScreen.size.x - 75, playScreen.size.y - 75), new PVector(0, 0), 25);
    
  for(int i = 0; i < itemList.size(); i++){
    itemList.get(i).itemStatus = 1;
  }
  
}
