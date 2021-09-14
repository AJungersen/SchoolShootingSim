boolean Hallway1_1 = true;
boolean Hallway1_2 = false;

//--------------------------------------

void Hallway1_1()
{
  //ways of getting into the hallway
  if(Room1_156RightSide && BigRoom1_156RightSide.RoomSwitch)
  {
    Room1_156RightSide = false;
    Hallway1_1 = true;
    BigRoom1_156RightSide.RoomSwitch = false;
    
    BigRoom1_156RightSide.ExsitingRoom("Right");
  }
  else if(Classroom1_119Activated && Classroom1_119.RoomSwitch)
  {
    Classroom1_119Activated = false;
    Hallway1_1 = true;
    Classroom1_119.RoomSwitch = false;
    
    Classroom1_119.ClassroomExist();
  }
  else if(Hallway1_2 && Hallway.HallwaySwitchR)
  {
    Hallway1_2 = false;
    Hallway1_1 = true;
    Hallway.HallwaySwitchR = false;
  }
    
  if(Hallway1_1)
  {
    //Hallway construction
    Hallway.VerticalDoorL("Unlocked");
    Hallway.VerticalDoorR("Locked");
    
    Hallway.DrawHorisontalWallTop();
    Hallway.CollisonHorisontalWallTop();
    
    //Rooms
    BigRoom1_156RightSide.DrawOutside("Right");
    Classroom1_119.ClassroomDoor();
  }
}

//--------------------------------------
void Hallway1_2()
{
  //ways of getting into the hallway
  if(Room1_156LeftSide && BigRoom1_156LeftSide.RoomSwitch)
  {
    Room1_156LeftSide = false;
    Hallway1_2 = true;
    BigRoom1_156LeftSide.RoomSwitch = false;
    
    BigRoom1_156LeftSide.ExsitingRoom("Left");
  }
    else if(Classroom1_121Activated && Classroom1_121.RoomSwitch)
  {
    Classroom1_121Activated = false;
    Hallway1_2 = true;
    Classroom1_121.RoomSwitch = false;
    
    Classroom1_121.ClassroomExist();
  }
  else if(Hallway1_1 && Hallway.HallwaySwitchL)
  {
    Hallway1_1 = false;
    Hallway1_2 = true;
    Hallway.HallwaySwitchL = false;
  }
  
  if(Hallway1_2)
  {
    //Hallway construction
    Hallway.VerticalDoorL("Locked");
    Hallway.VerticalDoorR("Unlocked");
    
    Hallway.DrawHorisontalWallTop();
    Hallway.CollisonHorisontalWallTop();
    
    //Room construction
    BigRoom1_156LeftSide.DrawOutside("Left"); 
    Classroom1_121.ClassroomDoor();
  }
}
  
