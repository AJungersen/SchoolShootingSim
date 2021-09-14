// Room size b 2 og l 2.3 længde bredde forhold 0.87
// Små lokaler size b 1.2 l 0.7
// Forhold 0.6 0.3
// Mellem lokaler size b 1.6 l 0.6
// Forhold 0.8 0.26
// Store lokaler size b 1.2 l 2.8
// Forhold 0.6 1.22
// Class room full screen

//--------------------------------------

float xSmallRoomSize = 0.3;
float xMediumRoomSize = 0.26;
float xBigRoomSize = 1.22;

float ySmallRoomSize = 0.6;
float yMediumRoomSize = 0.8;
float yBigRoomSize = 0.6;

//--------------------------------------
//---------- Base room ----------
class Room
{
  float x = 0;
  float y = 0;
  float xSize;
  float ySize;
  
  float xDoorDistanceFromBoarder;
  String DoorSide;
  float DoorSize = 150;
  
  boolean RoomSwitch = false;
  
  void DrawOutside(String Side)
    {
      //---------- Creating the room ----------
      stroke(0);
      strokeWeight(1.5);
      rectMode(CENTER);
      fill(0);
      rect(x, y, xSize, ySize);
      
      //---------- Door is defined depending on placment----------
      float yDoor = ySize;
      float y2Door = ySize;
      float xDoor = 0;
      float x2Door = 0;
      
      if(Side == "Right")
      {
        if(DoorSide == "Right")
        {
          xDoor = x + xSize/2 - xDoorDistanceFromBoarder;
          x2Door = xDoor - DoorSize;
        }
        else if(DoorSide == "Left")
        {
          x2Door = x + xDoorDistanceFromBoarder;
          xDoor = x2Door + DoorSize;
        }
      }
      else if(Side == "Left")
      {
        if(DoorSide == "Right")
        {
          xDoor = x - xDoorDistanceFromBoarder;;
          x2Door = xDoor - DoorSize;
        }
        else if(DoorSide == "Left")
        {
          x2Door = x - xSize/2 + xDoorDistanceFromBoarder;;
          xDoor = x2Door + DoorSize;
        }
      }
      
      //---------- Door is drawed ----------      
      stroke(255);
      strokeWeight(3);
      line(xDoor, yDoor, x2Door, y2Door);
      
      //---------- Door collision ----------
      if((Player.x < xDoor - Player.Size/2) && 
         (Player.x > x2Door - Player.Size/2) && 
         (Player.y < yDoor + Player.Size/2))
      {
        RoomSwitch = true;
      }
      
      //---------- Wall collison depending on room placemnet side ----------
      else if(Side == "Right" &&
              Player.y < (ySize + Player.Size/2) && 
              Player.y >= (Player.Size/2) && 
              Player.x < (x + xSize/2 + Player.Size/2) && 
             (Player.x >= x + Player.Size/2))
      {
        if(Player.ySpeed != 0)
        {
          Player.y = ySize + Player.Size/2;
        }
        else if(Player.xSpeed != 0)
        {
          Player.x = xSize/2 + Player.Size/2;
        }
      }
      else if(Side == "Left" &&
              Player.y < (ySize + Player.Size/2) && 
              Player.y >= (Player.Size/2) && 
              Player.x <= (x - Player.Size/2) && 
              Player.x > (x - xSize/2 - Player.Size/2))
      {
        if(Player.ySpeed != 0)
        {
          Player.y = ySize + Player.Size/2;
        }
        else if(Player.xSpeed != 0)
        {
          Player.x = x - xSize/2 - Player.Size/2;
        }
      }
    }
    
  void DrawInside(String Side, String TopBottom)
   {
     //---------- Horisontal walls ----------
     stroke(0);
     strokeWeight(5);
     line(0, PlayScreen.ySize, PlayScreen.xSize, PlayScreen.ySize);
     line(0, 0, PlayScreen.xSize, 0);
     
     //---------- Vertical walls ----------
     line(PlayScreen.xSize, 0, PlayScreen.xSize, PlayScreen.ySize);
     line(0, 0, 0, PlayScreen.ySize);
      
     //---------- Door is defined depending on placment ----------
     float xDoor = 0;
     float x2Door = 0;
     
     float yDoor = 0;
     float TopBottomColision = 0;
     
     if(Side == "Right")
     {
       xDoor = PlayScreen.xSize - xDoorDistanceFromBoarder;
       x2Door = xDoor - DoorSize;
     }
     else if(Side == "Left")
     {
       x2Door = xDoorDistanceFromBoarder;
       xDoor = x2Door + DoorSize;
     }
     
     if(TopBottom == "Top")
     {
       yDoor = 1;
       TopBottomColision = yDoor + Player.Size/2 - 1;
     }
     else if(TopBottom == "Bottom")
     {
       yDoor = PlayScreen.ySize;
       TopBottomColision = yDoor - Player.Size/2;
     }
     
     //---------- Door is drawed ----------
     stroke(255);
     strokeWeight(2);
     line(xDoor, yDoor, x2Door, yDoor);
     
     //---------- Door collision depending on placment----------
     if(TopBottom == "Bottom")
     {
       if((Player.x <= xDoor - Player.Size/2) && 
          (Player.x >= x2Door + Player.Size/2) && 
          (Player.y > TopBottomColision))
       {
         RoomSwitch = true;
       }
       else
       {
         WallCollision();
       }
     }
     else if(TopBottom == "Top")
     {
       if((Player.x <= xDoor - Player.Size/2) && 
          (Player.x >= x2Door + Player.Size/2) && 
          (Player.y < TopBottomColision))
       {
         RoomSwitch = true;
       }
       else
       {
         WallCollision();
       }
     }   
   }
    
       
   void WallCollision()
   {
     //---------- Right wall ----------
     if(Player.x >= (PlayScreen.xSize - Player.Size/2))
     {
       Player.x = PlayScreen.xSize - Player.Size/2;
     }
      
     //---------- Left wall ----------
     if(Player.x <= Player.Size/2)
     {
       Player.x = Player.Size/2;
     }
      
     //---------- Top wall ----------
     if(Player.y >= (PlayScreen.ySize - Player.Size/2))
     {
       Player.y = PlayScreen.ySize - Player.Size/2;
     }
     
     //---------- Bottom wall ----------
     if(Player.y <= Player.Size/2)
     {
       Player.y = Player.Size/2;
     }
   }
   
   void ExsitingRoom(String Side)
   {
     //---------- Player placment depending on door and room placement ----------
     Player.y = ySize + Player.Size/2 + 20;
     
     if(Side == "Right")
     {
       if(DoorSide == "Right")
       {
         Player.x = x + xSize/2 - xDoorDistanceFromBoarder - DoorSize/2;
       }
       else if(DoorSide == "Left")
       {
         Player.x = x + xDoorDistanceFromBoarder + DoorSize/2;
       }
     }
     
     if(Side == "Left")
     {
       if(DoorSide == "Right")
       {
         Player.x = x - xDoorDistanceFromBoarder - DoorSize/2;
       }
       else if(DoorSide == "Left")
       {
         Player.x = x - xSize/2 + xDoorDistanceFromBoarder + DoorSize/2;
       }
     }
   }
   
   void EnteringRoom(String Side, String TopBottom)
   {
     //---------- Player placment depending on door placement ----------
     if(TopBottom == "Top")
     {
       Player.y = 0 + Player.Size/2 + 20;
     }
     else if(TopBottom == "Bottom")
     {
       Player.y = PlayScreen.ySize - Player.Size/2 - 10;
     }
     
     if(Side == "Right")
     {
       Player.x = PlayScreen.xSize - xDoorDistanceFromBoarder - DoorSize/2;
     }
     else if(Side == "Left")
     {
       Player.x = 0 + xDoorDistanceFromBoarder + DoorSize/2;
     }
   }
}

//--------------------------------------
//---------- Big room ----------
class BigRoom extends Room
{
  
  void SetSize()
  {
    xSize = PlayScreen.xSize * xBigRoomSize;
    ySize = PlayScreen.ySize * yBigRoomSize;
  }
  
  
  BigRoom(float _x, float _y, float _xDoorDistanceFromBoarder, String _DoorSide)
  {
    SetSize();
    x = _x;
    y = _y;
    xDoorDistanceFromBoarder = _xDoorDistanceFromBoarder;
    DoorSide = _DoorSide;
    
  }
    
  BigRoom()
  {
    SetSize();
  }
}

//---------- Classroom ----------
class Classroom extends Room
{ 
  float xDoor = 0;
  float x2Door = 0;
  
    void SetSize()
    {
      xDoorDistanceFromBoarder = 150;
    }
    
    Classroom()
    {
      SetSize();
      
      xDoor = x + xDoorDistanceFromBoarder;
      x2Door = xDoor + DoorSize;
    }
    
    void ClassroomDoor()
      {
        Hallway.DrawHorisontalWallBottom();
        
        //---------- Door drawed ----------
        stroke(255);
        strokeWeight(3);
        line(xDoor, PlayScreen.ySize, x2Door, PlayScreen.ySize);
        
        //---------- Door and wall collision ----------
        if((Player.x >= xDoor + Player.Size/2) && 
          (Player.x <= x2Door - Player.Size/2) && 
          (Player.y > PlayScreen.ySize - Player.Size/2))
        {
          RoomSwitch = true;
        }
        else
        {
          Hallway.CollisonHorisontalWallBottom();
        }
      }
      
      void ClassroomExist()
      {
        Player.x = xDoor + DoorSize/2;
        Player.y = PlayScreen.ySize - Player.Size/2 - 10;
      }
}
