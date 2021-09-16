// Room size b 2 og l 2.3 længde bredde forhold 0.87
// Små lokaler size b 1.2 l 0.7
// Forhold 0.6 0.3
// Mellem lokaler size b 1.6 l 0.6
// Forhold 0.8 0.26
// Store lokaler size b 1.2 l 2.8
// Forhold 0.6 1.22
// Class room full screen

//--------------------------------------
//--------------- Big Rooms ---------------
BigRoom DefaultBigRoom;
BigRoom BigRoom1_156RightSide;
BigRoom BigRoom1_156LeftSide;

//--------------- Clasrooms ---------------
Classroom Classroom1_119;
Classroom Classroom1_121;
//--------------------------------------

PVector smallRoomSizePresentage = new PVector(0.3, 0.6);
PVector mediumRoomSizePresentage = new PVector(0.26, 0.8);
PVector bigRoomSizePresentage = new PVector(1.22, 0.6);

enum DoorPlacement{
  right,
  left,
  top,
  bottom
}

enum RoomPlacement{
  right,
  left
}

//--------------------------------------
//---------- Base room ----------
class Room
{
  PVector position = new PVector(0, 0);
  PVector size = new PVector();
  
  float xDoorDistanceFromBoarder;
  float doorSize = 150;
  DoorPlacement doorSide;
  RoomPlacement roomPlacement;
  
  boolean roomSwitch = false;
  
  void drawOutside(Player _player)
    {
      //---------- Creating the room ----------
      stroke(0);
      strokeWeight(1.5);
      rectMode(CENTER);
      fill(0);
      rect(position.x, position.y, size.x, size.y);
      
      //---------- Door is defined depending on room placment----------
      PVector doorPosition1 = new PVector(0, size.y);
      PVector doorPosition2 = new PVector(0, size.y);
      
      if(roomPlacement == RoomPlacement.right)
      {
        if(doorSide == DoorPlacement.right)
        {
          doorPosition1.x = position.x + size.x/2 - xDoorDistanceFromBoarder;
          doorPosition2.x = doorPosition1.x - doorSize;
        }
        else if(doorSide == DoorPlacement.left)
        {
          doorPosition2.x = position.x + xDoorDistanceFromBoarder;
          doorPosition1.x = doorPosition2.x + doorSize;
        }
      }
      else if(roomPlacement == RoomPlacement.left)
      {
        if(doorSide == DoorPlacement.right)
        {
          doorPosition1.x = position.x - xDoorDistanceFromBoarder;;
          doorPosition2.x = doorPosition1.x - doorSize;
        }
        else if(doorSide == DoorPlacement.left)
        {
          doorPosition2.x = position.x - size.x/2 + xDoorDistanceFromBoarder;;
          doorPosition1.x = doorPosition2.x + doorSize;
        }
      }
      
      //---------- Door is drawed ----------      
      stroke(255);
      strokeWeight(3);
      line(doorPosition1.x, doorPosition1.y, doorPosition2.x, doorPosition2.y);
      
      //---------- Door collision ----------
      if((_player.position.x < doorPosition1.x - _player.size/2) && 
         (_player.position.x > doorPosition2.x + _player.size/2) && 
         (_player.position.y < doorPosition1.y + _player.size/2))
      {
        roomSwitch = true;
        items.RoomSwitch = true;
      }
      
      //---------- Wall collison depending on room placemnet side ----------
      else if(roomPlacement == RoomPlacement.right &&
              _player.position.y < (size.y + _player.size/2) && 
              _player.position.y >= (_player.size/2) && 
              _player.position.x < (position.x + size.x/2 + _player.size/2) && 
             (_player.position.x >= position.x + _player.size/2))
      {
        if(_player.velocity.y != 0)
        {
          _player.position.y = size.y + _player.size/2;
        }
        else if(_player.velocity.x != 0)
        {
          _player.position.x = size.x/2 + _player.size/2;
        }
      }
      
      else if(roomPlacement == RoomPlacement.left &&
              _player.position.y < (size.y + _player.size/2) && 
              _player.position.y >= (_player.size/2) && 
              _player.position.x <= (position.x - _player.size/2) && 
             (_player.position.x > position.x - size.x/2 - _player.size/2))
      {
        if(_player.velocity.y != 0)
        {
          _player.position.y = size.y + _player.size/2;
        }
        else if(_player.velocity.x != 0)
        {
          _player.position.x = position.x - size.x/2 - _player.size/2;
        }
      }
    }

//------------------------------------------------------------
    
  void drawInside(DoorPlacement _doorSide, DoorPlacement _doorPlacement, Player _player)
   {
     //---------- Horisontal walls ----------
     stroke(0);
     strokeWeight(5);
     line(0, playScreen.size.y, playScreen.size.x, playScreen.size.y);
     line(0, 0, playScreen.size.x, 0);
     
     //---------- Vertical walls ----------
     line(playScreen.size.x, 0, playScreen.size.x, playScreen.size.y);
     line(0, 0, 0, playScreen.size.y);
      
     //---------- Door is defined depending on placment ----------
     PVector xDoorPosition = new PVector(0, 0);
     
     float yDoor = 0;
     float TopBottomColision = 0;
     
     
     if(_doorSide == DoorPlacement.right)
     {
       xDoorPosition.x = playScreen.size.x - xDoorDistanceFromBoarder;
       xDoorPosition.y = xDoorPosition.x - doorSize;
     }
     else if(_doorSide == DoorPlacement.left)
     {
       xDoorPosition.y = xDoorDistanceFromBoarder;
       xDoorPosition.x = xDoorPosition.y + doorSize;
     }
     
     if(_doorPlacement == DoorPlacement.top)
     {
       yDoor = 1;
       TopBottomColision = yDoor + _player.size/2 - 1;
     }
     else if(_doorPlacement == DoorPlacement.bottom)
     {
       yDoor = playScreen.size.y;
       TopBottomColision = yDoor - _player.size/2;
     }
     
     //---------- Door is drawed ----------
     stroke(255);
     strokeWeight(2);
     line(xDoorPosition.x, yDoor, xDoorPosition.y, yDoor);
     
     //---------- Door collision depending on placment----------
     if(_doorPlacement == DoorPlacement.bottom)
     {
       if((_player.position.x <= xDoorPosition.x - _player.size/2) && 
          (_player.position.x >= xDoorPosition.y + _player.size/2) && 
          (_player.position.y > TopBottomColision))
       {
         roomSwitch = true;
         items.RoomSwitch = true;
       }
       else
       {
         wallCollision(_player);
       }
     }
     else if(_doorPlacement == DoorPlacement.top)
     {
       if((_player.position.x <= xDoorPosition.x - _player.size/2) && 
          (_player.position.x >= xDoorPosition.y + _player.size/2) && 
          (_player.position.y < TopBottomColision))
       {
         roomSwitch = true;
         items.RoomSwitch = true;
       }
       else
       {
         wallCollision(_player);
       }
     }   
   }
    
       
   void wallCollision(Player _player)
   {
     //---------- Right wall ----------
     if(_player.position.x >= (playScreen.size.x - _player.size/2))
     {
       _player.position.x = playScreen.size.x - _player.size/2;
     }
      
     //---------- Left wall ----------
     if(_player.position.x <= _player.size/2)
     {
       _player.position.x = _player.size/2;
     }
      
     //---------- Top wall ----------
     if(_player.position.y >= (playScreen.size.y - _player.size/2))
     {
       _player.position.y = playScreen.size.y - _player.size/2;
     }
     
     //---------- Bottom wall ----------
     if(_player.position.y <= _player.size/2)
     {
       _player.position.y = _player.size/2;
     }
   }
   
   void exitingRoom(Player _player)
   {
     //---------- Player placment depending on door and room placement ----------
     _player.position.y = size.y + _player.size/2 + 20;
     
     if(roomPlacement == RoomPlacement.right)
     {
       if(doorSide == DoorPlacement.right)
       {
         _player.position.x = position.x + size.x/2 - xDoorDistanceFromBoarder - doorSize/2;
       }
       else if(doorSide == DoorPlacement.left)
       {
         _player.position.x = position.x + xDoorDistanceFromBoarder + doorSize/2;
       }
     }
     
     if(roomPlacement == RoomPlacement.left)
     {
       if(doorSide == DoorPlacement.right)
       {
         _player.position.x = position.x - xDoorDistanceFromBoarder - doorSize/2;
       }
       else if(doorSide == DoorPlacement.left)
       {
         _player.position.x = position.x - size.x/2 + xDoorDistanceFromBoarder + doorSize/2;
       }
     }
   }
   
   void EnteringRoom(DoorPlacement _doorSide, DoorPlacement _doorPlacement, Player _player)
   {
     //---------- Player placment depending on door placement ----------
     if(_doorPlacement == DoorPlacement.top)
     {
       _player.position.y = 0 + _player.size/2 + 20;
     }
     else if(_doorPlacement == DoorPlacement.bottom)
     {
       _player.position.y = playScreen.size.y - _player.size/2 - 10;
     }
     
     if(_doorSide == DoorPlacement.right)
     {
       _player.position.x = playScreen.size.x - xDoorDistanceFromBoarder - doorSize/2;
     }
     else if(_doorSide == DoorPlacement.left)
     {
       _player.position.x = 0 + xDoorDistanceFromBoarder + doorSize/2;
     }
   }
}

//--------------------------------------
//---------- Big room ----------
class BigRoom extends Room
{
  
  void SetSize()
  {
    size = new PVector(playScreen.size.copy().x * bigRoomSizePresentage.copy().x, playScreen.size.copy().y * bigRoomSizePresentage.copy().y); 
  }
  
  
  BigRoom(PVector _position, float _xDoorDistanceFromBoarder, DoorPlacement _doorSide, RoomPlacement _roomPlacement)
  {
    SetSize();
    position = _position.copy();
    xDoorDistanceFromBoarder = _xDoorDistanceFromBoarder;
    doorSide = _doorSide;
    roomPlacement = _roomPlacement;
  }
    
  BigRoom()
  {
    SetSize();
  }
}

//---------- Classroom ----------
class Classroom extends Room
{ 
  PVector xDoorPosition = new PVector(0, 0);
  
    void SetSize()
    {
      xDoorDistanceFromBoarder = 150;
    }
    
    Classroom()
    {
      SetSize();
      
      xDoorPosition.x = position.x + xDoorDistanceFromBoarder;
      xDoorPosition.y = xDoorPosition.x + doorSize;
    }
    
    void ClassroomDoor(Player _player)
      {
        hallway.drawHorisontalWallBottom();
        
        //---------- Door drawed ----------
        stroke(255);
        strokeWeight(3);
        line(xDoorPosition.x, playScreen.size.y, xDoorPosition.y, playScreen.size.y);
        
        //---------- Door and wall collision ----------
        if((_player.position.x >= xDoorPosition.x + _player.size/2) && 
          (_player.position.x <= xDoorPosition.y - _player.size/2) && 
          (_player.position.y > playScreen.size.y - _player.size/2))
        {
          roomSwitch = true;
          items.RoomSwitch = true;
        }
        else
        {
          hallway.collisonHorisontalWallBottom(_player);
        }
      }
      
      void ClassroomExist(Player _player)
      {
        _player.position.x = xDoorPosition.x + doorSize/2;
        _player.position.y = playScreen.size.y - _player.size/2 - 10;
      }
}
