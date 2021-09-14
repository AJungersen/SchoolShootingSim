void keyPressed()
{
  if(key == 'w')
  {
    Player.ySpeed = -5;
  }
  
   if(key == 's')
  {
    Player.ySpeed = 5;
  }
  
   if(key == 'a')
  {
    Player.xSpeed = -5;
  }
  
   if(key == 'd')
  {
    Player.xSpeed = 5;
  }
}

void keyReleased()
{if(key == 'w')
  {
    Player.ySpeed = 0;
  }
  
   if(key == 's')
  {
    Player.ySpeed = 0;
  }
  
   if(key == 'a')
  {
    Player.xSpeed = 0;
  }
  
   if(key == 'd')
  {
    Player.xSpeed = 0;
  }
}
