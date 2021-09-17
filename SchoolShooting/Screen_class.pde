//Indeling af skærmen
//Play screen height 6/10
//Caracter display screen height 2/10
//Options dispay screen height 2/10, width 1/2
//Text display screen height 2/10, width 1/2

PVector playScreenSizePercentage = new PVector(1, 0.75);
PVector textDisplayScreenSizePercentage = new PVector(0.5, 0.25);
PVector optionsScreenSizePercentage = new PVector(0.5, 0.25);

//--------------------------------------

PlayScreen playScreen;
OptionsScreen optionsScreen;
TextDisplayScreen textDisplayScreen;

//--------------------------------------

class PlayScreen
{
  PVector size = new PVector(width * playScreenSizePercentage.x, height * playScreenSizePercentage.y);
  PVector position = new PVector(width/2, 0 + size.y/2);
  
    PlayScreen()
    {
    }
    
    void Draw()
    {
      rectMode(CENTER);
      strokeWeight(2);
      noFill();
      //fill(150);
      stroke(0);
      rect(position.x, position.y, size.x, size.y);
    }
}

class OptionsScreen//ill use this for the timer
{
  PVector size = new PVector(width * optionsScreenSizePercentage.x, height * optionsScreenSizePercentage.y);
  PVector position = new PVector(size.x/2, size.y/2 + playScreen.size.y);
  
    OptionsScreen()
    {
    }
    
    void Draw()
    {
      rectMode(CENTER);
      strokeWeight(3);
      fill(240);
      stroke(141, 31, 31);
      rect(position.x, position.y, size.x, size.y);
      textSize(50);
      fill(0);
      text(vicScreen.min + ":" + vicScreen.time,(width/2)-150, position.y+20); 
    }
}


class TextDisplayScreen
{
  PVector Size = new PVector(width * textDisplayScreenSizePercentage.x, height * textDisplayScreenSizePercentage.y);
  PVector Position = new PVector(Size.x/2 + optionsScreen.size.x, Size.y/2 + playScreen.size.y);
  
    TextDisplayScreen()
    {
    }
    
    void Draw()
    {
      rectMode(CENTER);
      strokeWeight(3);
      fill(240);
      stroke(141, 31, 31);
      rect(Position.x, Position.y, Size.x, Size.y);
    }
}
