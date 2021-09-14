boolean Room1_156RightSide = false;
boolean Room1_156LeftSide = false;

//--------------------------------------

void Room1_156RightSide()
{
  //---------- Ways of getting into the room----------
  if(Hallway1_1 && BigRoom1_156RightSide.RoomSwitch)
  {
    Room1_156RightSide = true;
    Hallway1_1 = false;
    BigRoom1_156RightSide.RoomSwitch = false;
    
    BigRoom1_156RightSide.EnteringRoom("Right", "Bottom");
  }
  
  if(Room1_156RightSide)
  {
    BigRoom1_156RightSide.DrawInside("Right", "Bottom");
  }
}

//--------------------------------------
void Room1_156LeftSide()
{
  //---------- Ways of getting into the room----------
  if(Hallway1_2 && BigRoom1_156LeftSide.RoomSwitch)
  {
    Room1_156LeftSide = true;
    Hallway1_2 = false;
    BigRoom1_156LeftSide.RoomSwitch = false;
    
    BigRoom1_156LeftSide.EnteringRoom("Left", "Bottom");
  }
  
  if(Room1_156LeftSide)
  {
    BigRoom1_156LeftSide.DrawInside("Left", "Bottom");
  }
}

//---------- Classroom's ----------
boolean Classroom1_119Activated = false;
boolean Classroom1_121Activated = false;

//--------------------------------------
void Classroom1_119()
{
  //---------- Ways of getting into the room----------
  if(Hallway1_1 && Classroom1_119.RoomSwitch)
  {
    Classroom1_119Activated = true;
    Hallway1_1 = false;
    Classroom1_119.RoomSwitch = false;
    
    Classroom1_119.EnteringRoom("Left", "Top");
  }
  
  if(Classroom1_119Activated)
  {
    Classroom1_119.DrawInside("Left", "Top");
  }
}

//--------------------------------------
void Classroom1_121()
{
  //---------- Ways of getting into the room----------
  if(Hallway1_2 && Classroom1_121.RoomSwitch)
  {
    Classroom1_121Activated = true;
    Hallway1_2 = false;
    Classroom1_121.RoomSwitch = false;
    
    Classroom1_121.EnteringRoom("Left", "Top");
  }
  
  if(Classroom1_121Activated)
  {
    Classroom1_121.DrawInside("Left", "Top");
  }
}
