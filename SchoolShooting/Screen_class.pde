//Indeling af skærmen
//Play screen height 6/10
//Caracter display screen height 2/10
//Options dispay screen height 2/10, width 1/2
//Text display screen height 2/10, width 1/2
  
float xTextDisplayScreenSize = 0.5;
float xOptionsScreenSize = 0.5;

float yPlayScreenSize = 0.75;
float yTextDisplayScreenSize = 0.25;
float yOptionsScreenSize = 0.25;

//--------------------------------------

PlayScreen PlayScreen;

OptionsScreen OptionsScreen;
TextDisplayScreen TextDisplayScreen;

//--------------------------------------

class PlayScreen
{
  float xSize = width;
  float ySize = height * yPlayScreenSize;
  float x = xSize/2;
  float y = ySize/2;
  
    PlayScreen()
    {
    }
    
    void Draw()
    {
      rectMode(CENTER);
      strokeWeight(2);
      fill(150);
      stroke(0);
      rect(x, y, xSize, ySize);
      
      
      
      items.spawnItems();
    }
}





class OptionsScreen
{
  float xSize = width * xOptionsScreenSize;
  float ySize = height * yOptionsScreenSize;
  float x = xSize/2;
  float y = ySize/2 + PlayScreen.ySize;
  
    OptionsScreen()
    {
    }
    
    void Draw()
    {
      rectMode(CENTER);
      strokeWeight(3);
      fill(240);
      stroke(141, 31, 31);
      rect(x, y, xSize, ySize);
    }
}


class TextDisplayScreen
{
  float xSize = width * xTextDisplayScreenSize;
  float ySize = height * yTextDisplayScreenSize;
  float x = xSize/2 + OptionsScreen.xSize;
  float y = ySize/2 + PlayScreen.ySize;
  
    TextDisplayScreen()
    {
    }
    
    void Draw()
    {
      rectMode(CENTER);
      strokeWeight(3);
      fill(240);
      stroke(141, 31, 31);
      rect(x, y, xSize, ySize);
    }
}
