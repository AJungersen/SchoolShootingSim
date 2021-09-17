Hallway hallway;

enum HallwaySwitchStates{
    right,
    left,
    idel
  }
  
enum HallwayDoorState{
  locked,
  unlocked
}

//--------------------------------------

class Hallway
{
  HallwaySwitchStates hallwaySwitch = HallwaySwitchStates.idel;
  
  PVector positionLeftCorner = new PVector(0, 0);
  PVector positionRightCorner = new PVector(playScreen.size.x, playScreen.size.y);
  
  float doorSize = 150;
  PVector doorDistanceFromBoarder = new PVector(150, 20);
  
    Hallway()//???
    {
    }
    
    //---------- Collision ----------
    void collisonVerticalWallRight(Player _player)
    {
      if(_player.position.x >= positionRightCorner.x - _player.size/2)
      {
         _player.position.x = positionRightCorner.x - _player.size/2;
      }
    }
    
    void collisonVerticalWallLeft(Player _player)
    {
      if(_player.position.x <= positionLeftCorner.x + _player.size/2)
      {
        _player.position.x = positionLeftCorner.x + _player.size/2;
      }
    }
    
    void collisonHorisontalWallTop(Player _player)
    {
      if(_player.position.y <= positionLeftCorner.y + _player.size/2)
      {
         _player.position.y = positionLeftCorner.y + _player.size/2;
      }
    }
    
    void collisonHorisontalWallBottom(Player _player)
    {
      if(_player.position.y >= positionRightCorner.y - _player.size/2)
      {
         _player.position.y = positionRightCorner.y - _player.size/2;
      }
    }
    
    //---------- Walls ----------
    void wallLook()
    {
      stroke(0);
      strokeWeight(5);
    }
    
    void drawVerticalWallRight()
    {
      wallLook();
      line(positionRightCorner.x, positionLeftCorner.y, positionRightCorner.x, positionRightCorner.y);
    }
    
    void drawVerticalWallLeft()
    {
      wallLook();
      line(positionLeftCorner.x, positionLeftCorner.y, positionLeftCorner.x, positionRightCorner.y);
    }
    
    void drawHorisontalWallTop()
    {
      wallLook();
      line(positionLeftCorner.x, positionLeftCorner.y, positionRightCorner.x, positionLeftCorner.y);
    }
    
    void drawHorisontalWallBottom()
    {
      wallLook();
      line(positionLeftCorner.x, positionRightCorner.y, positionRightCorner.x, positionRightCorner.y);
    }
    
    //---------- Døre ----------
    void verticalDoorRight(HallwayDoorState _hallwayDoor, Player _player)
    {
      PFont fontType;
      PVector yDoor = new PVector(positionRightCorner.y - doorDistanceFromBoarder.y, playScreen.size.y * 0.6 + doorDistanceFromBoarder.y);
      
      drawVerticalWallRight();
      
      stroke(255);
      strokeWeight(3);
      line(positionRightCorner.x, yDoor.x, positionRightCorner.x, yDoor.y);
      
      //---------- Collision ----------
      if((_player.position.y <= yDoor.x - _player.size/2) && 
        (_player.position.y >= yDoor.y + _player.size/2) && 
        (_player.position.x > positionRightCorner.x - _player.size/2))
      {
        if(_hallwayDoor == HallwayDoorState.locked)
        {
          fontType = loadFont("ArialMT-48.vlw");
          textAlign(CENTER);
          textSize(56);
          fill(240);
          textFont(fontType);
          text("Gang lukket på grund af corona", player.position.x, playScreen.size.y - 50);
          collisonVerticalWallRight(_player);
        }
        else if(_hallwayDoor == HallwayDoorState.unlocked)
        {
          hallwaySwitch = HallwaySwitchStates.right;
          _player.position.x = 0 + _player.size/2 + 10;
        }
      }
      else
      {
        collisonVerticalWallRight(_player);
      }
    }
    
    void verticalDoorLeft(HallwayDoorState _hallwayDoor, Player _player)
    {
      PFont FontType;
      PVector yDoor = new PVector(positionRightCorner.y - doorDistanceFromBoarder.y, playScreen.size.y * 0.6 + doorDistanceFromBoarder.y);
      
      drawVerticalWallLeft();
      
      stroke(255);
      strokeWeight(3);
      line(positionLeftCorner.x, yDoor.x, positionLeftCorner.x, yDoor.y);
      
      //---------- Collision ----------
      if((_player.position.y <= yDoor.x - _player.size/2) && 
         (_player.position.y >= yDoor.y + _player.size/2) && 
         (_player.position.x < positionLeftCorner.x + _player.size/2))
      {
        if(_hallwayDoor == HallwayDoorState.locked)
        {
          FontType = loadFont("ArialMT-48.vlw");
          textAlign(CENTER);
          textSize(56);
          fill(240);
          textFont(FontType);
          text("Gang lukket på grund af corona", player.position.x, playScreen.size.y - 50);
          collisonVerticalWallLeft(_player);
        }
        else if(_hallwayDoor == HallwayDoorState.unlocked)
        {
          hallwaySwitch = HallwaySwitchStates.left;
          _player.position.x = playScreen.size.x - _player.size/2 - 10;
        }
      }
      else
      {
         collisonVerticalWallLeft(_player);
      }
    }
}
