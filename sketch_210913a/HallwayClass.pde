Hallway Hallway;

//--------------------------------------

class Hallway
{
  float x = 0;
  float x2 = PlayScreen.xSize;
  float y = 0;
  float y2 = PlayScreen.ySize;
  
  float DoorSize = 150;
  float yDoorDistanceFromBoarder = 20;
  float xDoorDistanceFromBoarder = 150;
  
  boolean HallwaySwitchR = false;
  boolean HallwaySwitchL = false;
  
    Hallway()
    {
    }
    
    //---------- Collision ----------
    void CollisonVerticalWallR()
    {
      if(Player.x >= x2 - Player.Size/2)
      {
         Player.x = x2 - Player.Size/2;
      }
    }
    
    void CollisonVerticalWallL()
    {
      if(Player.x <= x + Player.Size/2)
      {
        Player.x = x + Player.Size/2;
      }
    }
    
    void CollisonHorisontalWallTop()
    {
      if(Player.y <= y + Player.Size/2)
      {
         Player.y = y + Player.Size/2;
      }
    }
    
    void CollisonHorisontalWallBottom()
    {
      if(Player.y >= y2 - Player.Size/2)
      {
         Player.y = y2 - Player.Size/2;
      }
    }
    
    //---------- Walls ----------
    void WallLook()
    {
      stroke(0);
      strokeWeight(5);
    }
    
    void DrawVerticalWallR()
    {
      WallLook();
      line(x2, y, x2, y2);
    }
    
    void DrawVerticalWallL()
    {
      WallLook();
      line(x, y, x, y2);
    }
    
    void DrawHorisontalWallTop()
    {
      WallLook();
      line(x, y, x2, y);
    }
    
    void DrawHorisontalWallBottom()
    {
      WallLook();
      line(x, y2, x2, y2);
    }
    
    //---------- Døre ----------
    void VerticalDoorR(String State)
    {
      PFont FontType;
      float yDoor = y2 - yDoorDistanceFromBoarder;
      float y2Door = PlayScreen.ySize * 0.6 + yDoorDistanceFromBoarder;
      
      DrawVerticalWallR();
      
      stroke(255);
      strokeWeight(3);
      line(x2, yDoor, x2, y2Door);
      
      //---------- Collision ----------
      if((Player.y <= yDoor - Player.Size/2) && 
        (Player.y >= y2Door + Player.Size/2) && 
        (Player.x > x2 - Player.Size/2))
      {
        if(State =="Locked")
        {
          FontType = loadFont("ArialMT-48.vlw");
          textAlign(CENTER);
          textSize(56);
          fill(240);
          textFont(FontType);
          text("Gang lukket på grund af corona", PlayScreen.xSize/2, PlayScreen.ySize - 50);
          CollisonVerticalWallR();
        }
        else if(State == "Unlocked")
        {
          HallwaySwitchR = true;
          Player.x = 0 + Player.Size/2 + 10;
        }
      }
      else
      {
        CollisonVerticalWallR();
      }
    }
    
    void VerticalDoorL(String State)
    {
      PFont FontType;
      float yDoor = y2 - yDoorDistanceFromBoarder;
      float y2Door = PlayScreen.ySize * 0.6 + yDoorDistanceFromBoarder;
      
      DrawVerticalWallL();
      
      stroke(255);
      strokeWeight(3);
      line(x, yDoor, x, y2Door);
      
      //---------- Collision ----------
      if((Player.y <= yDoor - Player.Size/2) && 
         (Player.y >= y2Door + Player.Size/2) && 
         (Player.x < x + Player.Size/2))
      {
        if(State =="Locked")
        {
          FontType = loadFont("ArialMT-48.vlw");
          textAlign(CENTER);
          textSize(56);
          fill(240);
          textFont(FontType);
          text("Gang lukket på grund af corona", PlayScreen.xSize/2, PlayScreen.ySize - 50);
          CollisonVerticalWallL();
        }
        else if(State == "Unlocked")
        {
          HallwaySwitchL = true;
          Player.x = PlayScreen.xSize - Player.Size/2 - 10;
        }
      }
      else
      {
         CollisonVerticalWallL();
      }
    }
}
