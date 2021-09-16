boolean Room1_156RightSide = false;
boolean Room1_156LeftSide = false;

//--------------------------------------

void Room1_156RightSide()
{
  //---------- Ways of getting into the room----------
  if(Hallway1_1 && BigRoom1_156RightSide.roomSwitch)
  {
    Room1_156RightSide = true;
    Hallway1_1 = false;
    BigRoom1_156RightSide.roomSwitch = false;
    items.RoomSwitch = false;
    
    BigRoom1_156RightSide.EnteringRoom(DoorPlacement.right, DoorPlacement.bottom, player);
  }
  
  if(Room1_156RightSide)
  {
    BigRoom1_156RightSide.drawInside(DoorPlacement.right, DoorPlacement.bottom, player);
  }
}

//--------------------------------------
void Room1_156LeftSide()
{
  //---------- Ways of getting into the room----------
  if(Hallway1_2 && BigRoom1_156LeftSide.roomSwitch)
  {
    Room1_156LeftSide = true;
    Hallway1_2 = false;
    BigRoom1_156LeftSide.roomSwitch = false;
    items.RoomSwitch = false;
    
    BigRoom1_156LeftSide.EnteringRoom(DoorPlacement.left, DoorPlacement.bottom, player);
  }
  
  if(Room1_156LeftSide)
  {
    BigRoom1_156LeftSide.drawInside(DoorPlacement.left, DoorPlacement.bottom, player);
  }
}

//---------- Classroom's ----------
boolean Classroom1_119Activated = false;
boolean Classroom1_121Activated = false;

//--------------------------------------
void Classroom1_119()
{
  //---------- Ways of getting into the room----------
  if(Hallway1_1 && Classroom1_119.roomSwitch)
  {
    Classroom1_119Activated = true;
    Hallway1_1 = false;
    Classroom1_119.roomSwitch = false;
    items.RoomSwitch = false;
    
    Classroom1_119.EnteringRoom(DoorPlacement.left, DoorPlacement.top, player);
  }
  
  if(Classroom1_119Activated)
  {
    Classroom1_119.drawInside(DoorPlacement.left, DoorPlacement.top, player);
  }
}

//--------------------------------------
void Classroom1_121()
{
  //---------- Ways of getting into the room----------
  if(Hallway1_2 && Classroom1_121.roomSwitch)
  {
    Classroom1_121Activated = true;
    Hallway1_2 = false;
    Classroom1_121.roomSwitch = false;
    items.RoomSwitch = false;
    
    Classroom1_121.EnteringRoom(DoorPlacement.left, DoorPlacement.top, player);
  }
  
  if(Classroom1_121Activated)
  {
    Classroom1_121.drawInside(DoorPlacement.left, DoorPlacement.top, player);
  }
}
