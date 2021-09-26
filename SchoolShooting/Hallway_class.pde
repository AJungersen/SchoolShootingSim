enum HallwaySwitchStates {
  right, 
    left, 
    idel
}

enum HallwayDoorState {
  locked, 
    unlocked
}

enum HallwayOrentation {
  horizontal, 
    vertical
}

//--------------------------------------

class Hallway
{
  HallwaySwitchStates hallwaySwitch = HallwaySwitchStates.idel;

  PVector positionLeftCornerTop = new PVector(0, 0);
  PVector positionRightCornerBottom = new PVector(0, 0);
  PVector size;

  float doorSize = 225;
  PVector doorDistanceFromBoarder = new PVector(150, 20);

  int hallwayNumber;

  HallwayOrentation hallwayOrentation;

  void setSize(HallwayOrentation _hallwayOrentation)
  {
    if (_hallwayOrentation == HallwayOrentation.horizontal)
    {
      size = new PVector(playScreen.size.x, playScreen.size.y);
    } else
    {
      size = new PVector(playScreen.size.y, playScreen.size.x);
    }
   // println("test", playScreen.size.y * 0.6 - positionRightCornerBottom.y);

    hallways.add(this);
  }

  Hallway(PVector _positionLeftCorner, HallwayOrentation _hallwayOrentation, int _hallwayNumber)
  {
    hallwayOrentation = _hallwayOrentation;
    hallwayNumber = _hallwayNumber;

    setSize(hallwayOrentation);
    positionLeftCornerTop = _positionLeftCorner;
    positionRightCornerBottom = new PVector(positionLeftCornerTop.x + size.x, positionLeftCornerTop.y + size.y);
  }

  //------------------------------------//
  //---------- Collision walls----------//
  //------------------------------------//
  void collisionVerticalWallRight(Player _player)
  {
    if (_player.velocity.x > 0) {
      if (_player.position.x >= positionRightCornerBottom.x - _player.size/2 &&
        _player.position.x < positionRightCornerBottom.x + _player.size/2 &&
        _player.position.y < positionRightCornerBottom.y + _player.size/2 &&
        _player.position.y > positionLeftCornerTop.y - _player.size/2)
      {
        _player.position.x = positionRightCornerBottom.x - _player.size/2;
      }
    } else if (_player.velocity.x < 0) {
      if (_player.position.x <= positionRightCornerBottom.x + _player.size/2 &&
        _player.position.x > positionRightCornerBottom.x - _player.size/2 &&
        _player.position.y < positionRightCornerBottom.y + _player.size/2 &&
        _player.position.y > positionLeftCornerTop.y - _player.size/2)
      {
        _player.position.x = positionRightCornerBottom.x + _player.size/2;
      }
    }
  }

  void collisionVerticalWallLeft(Player _player)
  {
    if (_player.velocity.x < 0) {
      if (_player.position.x <= positionLeftCornerTop.x + _player.size/2 &&
        _player.position.x > positionLeftCornerTop.x - _player.size/2 &&
        _player.position.y < positionRightCornerBottom.y + _player.size/2 &&
        _player.position.y > positionLeftCornerTop.y - _player.size/2)
      {
        _player.position.x = positionLeftCornerTop.x + _player.size/2;
      }
    } else if (_player.velocity.x > 0) {
      if (_player.position.x >= positionLeftCornerTop.x - _player.size/2 &&
        _player.position.x < positionLeftCornerTop.x + _player.size/2 &&
        _player.position.y < positionRightCornerBottom.y + _player.size/2 &&
        _player.position.y > positionLeftCornerTop.y - _player.size/2)
      {
        _player.position.x = positionLeftCornerTop.x - _player.size/2;
      }
    }
  }

  void collisionHorisontalWallTop(Player _player)
  {
    if (_player.velocity.y < 0) {
      if (_player.position.y <= positionLeftCornerTop.y + _player.size/2 &&
        _player.position.y > positionLeftCornerTop.y - _player.size/2 &&
        _player.position.x > positionLeftCornerTop.x - _player.size/2 &&
        _player.position.x < positionRightCornerBottom.x + _player.size/2)
      {
        _player.position.y = positionLeftCornerTop.y + _player.size/2;
      }
    } else if (_player.velocity.y > 0) {
      if (_player.position.y < positionLeftCornerTop.y + _player.size/2 &&
        _player.position.y >= positionLeftCornerTop.y - _player.size/2 &&
        _player.position.x > positionLeftCornerTop.x - _player.size/2 &&
        _player.position.x < positionRightCornerBottom.x + _player.size/2)
      {
        _player.position.y = positionLeftCornerTop.y - _player.size/2;
      }
    }
  }

  void collisionHorisontalWallBottom(Player _player)
  {
    if (_player.velocity.y > 0) {
      if (_player.position.y >= positionRightCornerBottom.y - _player.size/2 &&
        _player.position.y < positionRightCornerBottom.y + _player.size/2 &&
        _player.position.x > positionLeftCornerTop.x - _player.size/2 &&
        _player.position.x < positionRightCornerBottom.x + _player.size/2)
      {
        _player.position.y = positionRightCornerBottom.y - _player.size/2;
      }
    } else if (_player.velocity.y < 0) {
      if (_player.position.y > positionRightCornerBottom.y - _player.size/2 &&
        _player.position.y <= positionRightCornerBottom.y + _player.size/2 &&
        _player.position.x > positionLeftCornerTop.x - _player.size/2 &&
        _player.position.x < positionRightCornerBottom.x + _player.size/2)
      {
        _player.position.y = positionRightCornerBottom.y + _player.size/2;
      }
    }
  }
  //--------------------------------------//
  //---------- Collision corners----------//
  //--------------------------------------//
  void collisionLeftInsideCornerBottom(Player _player)
  {
    if (_player.position.x > positionLeftCornerTop.x - _player.size/2 && 
      _player.position.x < positionLeftCornerTop.x + (playScreen.size.x - playScreen.size.y) + player.size/2 &&
      _player.position.y > positionRightCornerBottom.y - playScreen.size.y/2 - player.size/2 &&
      _player.position.y < positionRightCornerBottom.y + _player.size/2)
    {
      if (_player.velocity.y > 0)
      {
        _player.position.y = positionRightCornerBottom.y - playScreen.size.y/2 - _player.size/2;
      } else if (_player.velocity.x < 0)
      {
        _player.position.x = positionLeftCornerTop.x + (playScreen.size.x - playScreen.size.y) + _player.size/2;
      }
    }
  }

  void collisionLeftInsideCornerTop(Player _player)
  {
    if (_player.position.x > positionLeftCornerTop.x - _player.size/2 && 
      _player.position.x < positionLeftCornerTop.x + (playScreen.size.x - playScreen.size.y) + player.size/2 &&
      _player.position.y > positionLeftCornerTop.y - player.size/2 &&
      _player.position.y < positionLeftCornerTop.y + playScreen.size.y/2 + _player.size/2)
    {
      if (_player.velocity.y < 0)
      {
        _player.position.y = positionLeftCornerTop.y + playScreen.size.y/2 + _player.size/2;
      } else if (_player.velocity.x < 0)
      {
        _player.position.x = positionLeftCornerTop.x + (playScreen.size.x - playScreen.size.y) + _player.size/2;
      }
    }
  }

  void collisionRightInsideCornerBottom(Player _player)
  {
    if (_player.position.x > positionRightCornerBottom.x - (playScreen.size.x - playScreen.size.y) - _player.size/2 && 
      _player.position.x < positionRightCornerBottom.x + player.size/2 &&
      _player.position.y > positionRightCornerBottom.y - playScreen.size.y/2 - player.size/2 &&
      _player.position.y < positionRightCornerBottom.y + _player.size/2)
    {
      if (_player.velocity.x > 0)
      {
        _player.position.x = positionRightCornerBottom.x - (playScreen.size.x - playScreen.size.y) - _player.size/2;
      } else if (_player.velocity.y > 0)
      {
        _player.position.y = positionRightCornerBottom.y - playScreen.size.y/2 - player.size/2;
      }
    }
  }

  void collisionRightInsideCornerTop(Player _player)
  {
    if (_player.position.x > positionRightCornerBottom.x - (playScreen.size.x - playScreen.size.y) - _player.size/2 && 
      _player.position.x < positionRightCornerBottom.x + player.size/2 &&
      _player.position.y > positionLeftCornerTop.y - player.size/2 &&
      _player.position.y < positionLeftCornerTop.y + playScreen.size.y/2 + _player.size/2)
    {
      if (_player.velocity.y < 0)
      {
        _player.position.y = positionLeftCornerTop.y + playScreen.size.y/2 + _player.size/2;
      } else if (_player.velocity.x > 0)
      {
        _player.position.x = positionRightCornerBottom.x - (playScreen.size.x - playScreen.size.y) - _player.size/2;
      }
    }
  }

  //--------------------------------//
  //---------- Draw walls ----------//
  //--------------------------------//
  void wallLook()
  {
    stroke(0);
    strokeWeight(1);
    fill(0);
    rectMode(CORNER);
  }

  //---------------------------------------//
  //---------- Draw linear walls ----------//
  //---------------------------------------//
  void drawVerticalWallRight()
  {
    wallLook();
    rect(positionRightCornerBottom.x, positionLeftCornerTop.y, size.x, size.y);
  }

  void drawVerticalWallLeft()
  {
    wallLook();
    rect(positionLeftCornerTop.x - size.x, positionLeftCornerTop.y, size.x, size.y);
  }

  void drawHorisontalWallTop()
  {
    wallLook();
    rect(positionLeftCornerTop.x, positionLeftCornerTop.y - size.y, size.x, size.y);
  }

  void drawHorisontalWallBottom()
  {
    wallLook();
    rect(positionLeftCornerTop.x, positionRightCornerBottom.y, size.x, size.y);
  }

  //------------------------------------------//
  //---------- Draw outside corners ----------//
  //------------------------------------------//
  void drawLeftOutsideCornerBottom()
  {
    wallLook();
    rect(positionLeftCornerTop.x - size.x, positionRightCornerBottom.y, size.x, size.y);
  }

  void drawLeftOutsideCornerTop()
  {
    wallLook();
    rect(positionLeftCornerTop.x - size.x, positionLeftCornerTop.y - size.y, size.x, size.y);
  }

  void drawRightOutsideCornerBottom()
  {
    wallLook();
    rect(positionRightCornerBottom.x, positionRightCornerBottom.y, size.x, size.y);
  }

  void drawRightOutsideCornerTop()
  {
    wallLook();
    rect(positionRightCornerBottom.x, positionLeftCornerTop.y - size.y, size.x, size.y);
  }

  //-----------------------------------------//
  //---------- Draw inside corners ----------//
  //-----------------------------------------//
  void drawLeftInsideCornerBottom()
  {
    wallLook();
    rect(positionLeftCornerTop.x, positionRightCornerBottom.y - playScreen.size.y/2, playScreen.size.x - playScreen.size.y, playScreen.size.y/2);
  }

  void drawLeftInsideCornerTop()
  {
    wallLook();
    rect(positionLeftCornerTop.x, positionLeftCornerTop.y, playScreen.size.x - playScreen.size.y, playScreen.size.y/2);
  }

  void drawRightInsideCornerBottom()
  {
    wallLook();
    rect(positionRightCornerBottom.x - (playScreen.size.x - playScreen.size.y), positionRightCornerBottom.y - playScreen.size.y/2, playScreen.size.x - playScreen.size.y, playScreen.size.y/2);
  }

  void drawRightInsideCornerTop()
  {
    wallLook();
    rect(positionRightCornerBottom.x - (playScreen.size.x - playScreen.size.y), positionLeftCornerTop.y, playScreen.size.x - playScreen.size.y, playScreen.size.y/2);
  }

  //------------------------------------
  //---------- Vertical doors ----------
  //------------------------------------
  //---------- Right ----------
  //---------- Draw ----------
  void drawVerticalDoorRight()
  {
    PVector yDoor = new PVector(positionRightCornerBottom.y, positionRightCornerBottom.y - doorSize);

    stroke(255);
    strokeWeight(3);
    line(positionRightCornerBottom.x, yDoor.x, positionRightCornerBottom.x, yDoor.y);

    stroke(0);
    line(positionRightCornerBottom.x, yDoor.y, positionRightCornerBottom.x, positionLeftCornerTop.y);
    line(positionRightCornerBottom.x, positionRightCornerBottom.y, positionRightCornerBottom.x, yDoor.x);
  }

  //---------- Collision ----------
  void collisionVerticalDoorRight(HallwayDoorState _hallwayDoor, Player _player)
  {
    PFont fontType;
    PVector yDoor = new PVector(positionRightCornerBottom.y, positionRightCornerBottom.y - doorSize);

    if ((_player.position.y <= yDoor.x - _player.size/2) && 
      (_player.position.y >= yDoor.y + _player.size/2) && 
      (_player.position.x > positionRightCornerBottom.x - _player.size/2))
    {
      if (_hallwayDoor == HallwayDoorState.locked) {

        fontType = loadFont("ArialMT-48.vlw");
        textAlign(CENTER);
        textSize(56);
        fill(240);
        textFont(fontType);
        text("Dør låst", positionRightCornerBottom.x - 200, yDoor.x - doorSize/2);
        collisionVerticalWallRight(_player);
      } else if (_hallwayDoor == HallwayDoorState.unlocked)
      {
      }
    } else
    {
      collisionVerticalWallRight(_player);
    }
  }

  //---------- Left ----------
  //---------- Draw ----------
  void drawVerticalDoorLeft()
  {
    PVector yDoor = new PVector(positionRightCornerBottom.y, positionRightCornerBottom.y - doorSize);

    stroke(255);
    strokeWeight(3);
    line(positionLeftCornerTop.x, yDoor.x, positionLeftCornerTop.x, yDoor.y);

    stroke(0);
    line(positionLeftCornerTop.x, yDoor.y, positionLeftCornerTop.x, positionLeftCornerTop.y);
    line(positionLeftCornerTop.x, positionRightCornerBottom.y, positionLeftCornerTop.x, yDoor.x);
  }

  //---------- Collision ----------
  void collisionVerticalDoorLeft(HallwayDoorState _hallwayDoor, Player _player)
  {
    PFont FontType;
    PVector yDoor = new PVector(positionRightCornerBottom.y, positionRightCornerBottom.y - doorSize);

    if ((_player.position.y <= yDoor.x - _player.size/2) && 
      (_player.position.y >= yDoor.y + _player.size/2) && 
      (_player.position.x < positionLeftCornerTop.x + _player.size/2))
    {
      if (_hallwayDoor == HallwayDoorState.locked)
      {
        FontType = loadFont("ArialMT-48.vlw");
        textAlign(CENTER);
        textSize(56);
        fill(240);
        textFont(FontType);
        text("Dør låst", positionLeftCornerTop.x + 200, yDoor.x - doorSize/2);
        collisionVerticalWallLeft(_player);
      } else if (_hallwayDoor == HallwayDoorState.unlocked)
      {
      }
    } else
    {
      collisionVerticalWallLeft(_player);
    }
  }

  //--------------------------------------
  //---------- Horizontal doors ----------
  //--------------------------------------
  //---------- top ----------
  //---------- Draw ----------
  void drawHorizontalDoorTop()
  {
    PVector xDoor = new PVector(positionLeftCornerTop.x, positionLeftCornerTop.x + doorSize);

    stroke(255);
    strokeWeight(3);
    line(xDoor.x, positionLeftCornerTop.y, xDoor.y, positionLeftCornerTop.y);

    stroke(0);
    line(positionLeftCornerTop.x, positionLeftCornerTop.y, xDoor.x, positionLeftCornerTop.y);
    line(xDoor.y, positionLeftCornerTop.y, positionRightCornerBottom.x, positionLeftCornerTop.y);
  }

  //---------- Collision ----------
  void collisionHorizontalDoorTop(HallwayDoorState _hallwayDoor, Player _player)
  {
    PFont fontType;
    PVector xDoor = new PVector(positionLeftCornerTop.x, positionLeftCornerTop.x + doorSize);

    if ((_player.position.x >= xDoor.x + _player.size/2) && 
      (_player.position.x <= xDoor.y - _player.size/2) && 
      (_player.position.y < positionLeftCornerTop.y + _player.size/2))
    {
      if (_hallwayDoor == HallwayDoorState.locked) {

        fontType = loadFont("ArialMT-48.vlw");
        textAlign(CENTER);
        textSize(56);
        fill(240);
        textFont(fontType);
        text("Dør låst", positionRightCornerBottom.x - 200, xDoor.x - doorSize/2);
        collisionHorisontalWallTop(_player);
      } else if (_hallwayDoor == HallwayDoorState.unlocked)
      {
      }
    } else
    {
      collisionHorisontalWallTop(_player);
    }
  }

  //---------- Bottom ----------
  //---------- Draw ----------
  void drawHorizontalDoorBottom()
  {
    PVector xDoor = new PVector(positionLeftCornerTop.x, positionLeftCornerTop.x + doorSize);

    stroke(255);
    strokeWeight(3);
    line(xDoor.x, positionRightCornerBottom.y, xDoor.y, positionRightCornerBottom.y);

    stroke(0);
    line(positionLeftCornerTop.x, positionRightCornerBottom.y, xDoor.x, positionRightCornerBottom.y);
    line(xDoor.y, positionRightCornerBottom.y, positionRightCornerBottom.x, positionRightCornerBottom.y);
  }

  //---------- Collision ----------
  void collisionHorizontalDoorBottom(HallwayDoorState _hallwayDoor, Player _player)
  {
    PFont fontType;
    PVector xDoor = new PVector(positionLeftCornerTop.x, positionLeftCornerTop.x + doorSize);

    if ((_player.position.x >= xDoor.x + _player.size/2) && 
      (_player.position.x <= xDoor.y - _player.size/2) && 
      (_player.position.y > positionLeftCornerTop.y + _player.size/2))
    {
      if (_hallwayDoor == HallwayDoorState.locked) {

        fontType = loadFont("ArialMT-48.vlw");
        textAlign(CENTER);
        textSize(56);
        fill(240);
        textFont(fontType);
        text("Dør låst", positionRightCornerBottom.x - 200, xDoor.x - doorSize/2);
        collisionHorisontalWallBottom(_player);
      } else if (_hallwayDoor == HallwayDoorState.unlocked)
      {
      }
    } else
    {
      collisionHorisontalWallBottom(_player);
    }
  }
}
