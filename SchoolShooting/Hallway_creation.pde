boolean Hallway1_1 = true;
boolean Hallway1_2 = false;

//--------------------------------------

void Hallway1_1()
{
  //ways of getting into the hallway
  if(Room1_156RightSide && BigRoom1_156RightSide.roomSwitch)
  {
    Room1_156RightSide = false;
    Hallway1_1 = true;
    BigRoom1_156RightSide.roomSwitch = false;
    
    BigRoom1_156RightSide.exitingRoom(player);
  }
  else if(Classroom1_119Activated && Classroom1_119.roomSwitch)
  {
    Classroom1_119Activated = false;
    Hallway1_1 = true;
    Classroom1_119.roomSwitch = false;
    
    Classroom1_119.ClassroomExist(player);
  }
  else if(Hallway1_2 && hallway.hallwaySwitch == HallwaySwitchStates.right)
  {
    Hallway1_2 = false;
    Hallway1_1 = true;
    hallway.hallwaySwitch = HallwaySwitchStates.idel;
  }
    
  if(Hallway1_1)
  {
    //Hallway construction
    hallway.verticalDoorLeft(HallwayDoorState.unlocked, player);
    hallway.verticalDoorRight(HallwayDoorState.locked, player);
    
    hallway.drawHorisontalWallTop();
    hallway.collisonHorisontalWallTop(player);
    
    //Rooms
    BigRoom1_156RightSide.drawOutside(player);
    Classroom1_119.ClassroomDoor(player);
  }
}

//--------------------------------------
void Hallway1_2()
{
  //ways of getting into the hallway
  if(Room1_156LeftSide && BigRoom1_156LeftSide.roomSwitch)
  {
    Room1_156LeftSide = false;
    Hallway1_2 = true;
    BigRoom1_156LeftSide.roomSwitch = false;
    
    BigRoom1_156LeftSide.exitingRoom(player);
  }
    else if(Classroom1_121Activated && Classroom1_121.roomSwitch)
  {
    Classroom1_121Activated = false;
    Hallway1_2 = true;
    Classroom1_121.roomSwitch = false;
    
    Classroom1_121.ClassroomExist(player);
  }
  else if(Hallway1_1 && hallway.hallwaySwitch == HallwaySwitchStates.left)
  {
    Hallway1_1 = false;
    Hallway1_2 = true;
    hallway.hallwaySwitch = HallwaySwitchStates.idel;
  }
  
  if(Hallway1_2)
  {
    //Hallway construction
    hallway.verticalDoorLeft(HallwayDoorState.locked, player);
    hallway.verticalDoorRight(HallwayDoorState.unlocked, player);
    
    hallway.drawHorisontalWallTop();
    hallway.collisonHorisontalWallTop(player);
    
    //Room construction
    BigRoom1_156LeftSide.drawOutside(player); 
    Classroom1_121.ClassroomDoor(player);
  }
}
  
