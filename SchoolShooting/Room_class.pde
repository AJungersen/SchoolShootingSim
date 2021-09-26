// Room size b 2 og l 2.3 længde bredde forhold 0.87
// Små lokaler size b 1.2 l 0.7
// Forhold 0.6 0.3
// Mellem lokaler size b 1.6 l 1.4
// Forhold 0.8 0.6
// Store lokaler size b 1.2 l 2.8
// Forhold 0.6 1.22
// Class room full screen b 1.6 l 2.3 

//--------------------------------------

PVector smallRoomSizePresentage = new PVector(0.333, 0.6);
PVector mediumRoomSizePresentage = new PVector(0.666, 0.6);
PVector bigRoomSizePresentage = new PVector(1.333, 0.6);
PVector classroomSizePresentage  =new PVector(1, 0.8);
PVector mediumClassroomSizePresentage = new PVector(0.666, 0.8);

enum DoorPlacement {
  right, 
    left, 
    middle, 
    rightAndLeft
}

enum RoomSide {
  right, 
    left, 
    middle
}

enum RoomPlacement {
  top, 
    bottom
}

enum RoomOrientation {
  vertical, 
    horizontal
}

//--------------------------------------
//---------- Base room ----------
class Room
{
  PVector position = new PVector(0, 0);
  PVector size = new PVector();

  float doorDistanceFromBoarder;
  float doorSize = 150;
  DoorPlacement doorSide;
  RoomSide roomSide;
  RoomPlacement roomPlacement;
  RoomOrientation roomOrientation;

  String roomName = "";

  boolean roomOverlap = false;

  void setSize(RoomOrientation _roomOrientation) {
  }

  Room() {
  }

  Room(float _doorDistanceFromBoarder, DoorPlacement _doorSide, RoomSide _roomSide, RoomPlacement _roomPlacement, RoomOrientation _roomOrientation, Hallway _hallway, boolean _roomOverlap, String _roomName)
  {
    doorDistanceFromBoarder = _doorDistanceFromBoarder;
    doorSide = _doorSide;
    roomSide = _roomSide;
    roomPlacement = _roomPlacement;
    roomOrientation = _roomOrientation;
    roomOverlap = _roomOverlap;
    roomName = _roomName;

    setSize(roomOrientation);

    //---------- horizontal rooms ----------
    if (roomOrientation == RoomOrientation.horizontal) 
    {
      println(roomOrientation);
      //---------- top ----------
      if (roomPlacement == RoomPlacement.top) 
      {
        if (roomSide == RoomSide.right) 
        {
          if (roomOverlap) 
          {
            position = new PVector(_hallway.positionRightCornerBottom.x, _hallway.positionLeftCornerTop.y + size.y/2);
          } else
          {
            position = new PVector(_hallway.positionRightCornerBottom.x - size.x/2, _hallway.positionLeftCornerTop.y + size.y/2);
          }
        } else if (roomSide == RoomSide.left) 
        {
          if (roomOverlap) 
          {
            position = new PVector(_hallway.positionLeftCornerTop.x, _hallway.positionLeftCornerTop.y + size.y/2);
          } else 
          {
            position = new PVector(_hallway.positionLeftCornerTop.x + size.x/2, _hallway.positionLeftCornerTop.y + size.y/2);
          }
        } else if (roomSide == RoomSide.middle) 
        {
          position = new PVector(_hallway.positionLeftCornerTop.x + _hallway.size.x/2, _hallway.positionLeftCornerTop.y + size.y/2);
        }
        //---------- bottom ----------
      } else if (roomPlacement == RoomPlacement.bottom) 
      {
        if (roomSide == RoomSide.right) 
        {
          position = new PVector(_hallway.positionRightCornerBottom.x - size.x/2, _hallway.positionRightCornerBottom.y + size.y/2);
        } else if (roomSide == RoomSide.left) 
        {
          position = new PVector(_hallway.positionLeftCornerTop.x + size.x/2, _hallway.positionRightCornerBottom.y + size.y/2);
        } else if (roomSide == RoomSide.middle) 
        {
          position = new PVector(_hallway.positionLeftCornerTop.x + _hallway.size.x/2, _hallway.positionRightCornerBottom.y + size.y/2);
        }
      }
      //---------- vertical rooms ----------
    } else if (roomOrientation == RoomOrientation.vertical) 
    {
      //---------- top ----------
      if (roomPlacement == RoomPlacement.top) 
      {
        if (roomSide == RoomSide.right) 
        {
          if (roomOverlap)
          {
            position = new PVector(_hallway.positionRightCornerBottom.x - size.x/2, _hallway.positionRightCornerBottom.y);
          } else 
          {
            position = new PVector(_hallway.positionRightCornerBottom.x - size.x/2, _hallway.positionRightCornerBottom.y - size.y/2);
          }
        } else if (roomSide == RoomSide.left) 
        {
          if (roomOverlap)
          {
            position = new PVector(_hallway.positionRightCornerBottom.x - size.x/2, _hallway.positionLeftCornerTop.y);
          } else {
            position = new PVector(_hallway.positionRightCornerBottom.x - size.x/2, _hallway.positionLeftCornerTop.y + size.y/2);
          }
        } else if (roomSide == RoomSide.middle) 
        {
          position = new PVector(_hallway.positionRightCornerBottom.x - size.x/2, _hallway.positionLeftCornerTop.y + _hallway.size.y/2);
        }
        //---------- bottom ----------
      } else if (roomPlacement == RoomPlacement.bottom) 
      {
        if (roomSide == RoomSide.right) 
        {
          position = new PVector(_hallway.positionLeftCornerTop.x - size.x/2, _hallway.positionRightCornerBottom.y - size.y/2);
        } else if (roomSide == RoomSide.left) 
        {
          position = new PVector(_hallway.positionLeftCornerTop.x - size.x/2, _hallway.positionLeftCornerTop.y + size.y/2);
        } else if (roomSide == RoomSide.middle) 
        {
          position = new PVector(_hallway.positionLeftCornerTop.x - size.x/2, _hallway.positionLeftCornerTop.y + _hallway.size.y/2);
        }
      }
    }
    println(position, size);
  }

  //-------------------------------
  //---------- Draw room ----------
  //-------------------------------
  void drawRoom(Player _player)
  {
    //---------- Creating the room ----------
    if (_player.roomImIn == "none") {
      stroke(0);
      strokeWeight(1.5);
      rectMode(CENTER);
      fill(0);
    } else if (_player.roomImIn == roomName) {
      stroke(0);
      strokeWeight(1.5);
      rectMode(CENTER);
      fill(0);

      //rect(position.x + size.x/2 + width/2, position.y, width, height * 3);
      //rect(position.x - size.x/2 - width/2, position.y, width, height * 3);

      //rect(position.x, position.y + size.y/2 + height/2, size.x, height);
      //rect(position.x, position.y - size.y/2 - height/2, size.x, height);

      noFill();
    }
    stroke(0);
    strokeWeight(1.5);
    rectMode(CENTER);

    rect(position.x, position.y, size.x, size.y);

    drawDoor(doorSide, roomPlacement, roomOrientation);
  }

  //------------------------------------
  //---------- Collision room ----------
  //------------------------------------
  void collisionRoom(Player _player/*, DoorPlacement doorSide, boolean inRoom, RoomPlacement roomPlacement, RoomOrientation roomOrientation*/)
  {
    ArrayList<PVector> doorPositions = calcDoorPosition(doorSide, roomPlacement, roomOrientation);

    PVector doorPosition1 = doorPositions.get(0).copy();
    PVector doorPosition2 = doorPositions.get(1).copy();
    PVector doorPosition3 = doorPositions.get(2).copy();
    PVector doorPosition4 = doorPositions.get(3).copy();

    //--------------------------------
    //---------- horizontal ----------
    //--------------------------------
    if (roomOrientation == RoomOrientation.horizontal)
    {
      //---------- top ----------
      if (roomPlacement == RoomPlacement.top) {
        if (_player.roomImIn == "none") {
          if (((_player.position.x < doorPosition1.x - _player.size/2) && 
            (_player.position.x > doorPosition2.x + _player.size/2) && 
            (_player.position.y < doorPosition1.y + _player.size/2)) ||
            (_player.position.x < doorPosition3.x - _player.size/2 &&
            _player.position.x > doorPosition4.x + _player.size/2 &&
            _player.position.y < doorPosition3.y + _player.size/2))
          {
            if (_player.position.y < doorPosition3.y - _player.size/2) 
            {
              _player.roomImIn = roomName;
            }
          } else 
          {
            outsideRoomCollision(roomOrientation, _player);
          }
        } else if (_player.roomImIn == roomName) {
          if (((_player.position.x < doorPosition1.x - _player.size/2) && 
            (_player.position.x > doorPosition2.x + _player.size/2) && 
            (_player.position.y > doorPosition1.y - _player.size/2))||
            (_player.position.x < doorPosition3.x - _player.size/2 &&
            _player.position.x > doorPosition4.x + _player.size/2 &&
            _player.position.y > doorPosition3.y - _player.size/2))
          {
            if (_player.position.y > doorPosition3.y + _player.size/2) 
            {
              _player.roomImIn = "none";
            }
          } else 
          {
            insideRoomCollision(_player);
          }
        }
        //---------- Bottom ----------
      } else if (roomPlacement == RoomPlacement.bottom) {
        if (_player.roomImIn == "none") {
          if (((_player.position.x < doorPosition1.x - _player.size/2) && 
            (_player.position.x > doorPosition2.x + _player.size/2) && 
            (_player.position.y > doorPosition1.y - _player.size/2)) ||
            (_player.position.x < doorPosition3.x - _player.size/2 &&
            _player.position.x > doorPosition4.x + _player.size/2 &&
            _player.position.y > doorPosition3.y - _player.size/2))
          {
            if (_player.position.y > doorPosition3.y + _player.size/2) 
            {
              _player.roomImIn = roomName;
            }
          } else 
          {
            outsideRoomCollision(roomOrientation, _player);
          }
        } else if (_player.roomImIn == roomName) {
          if (((_player.position.x < doorPosition1.x - _player.size/2) && 
            (_player.position.x > doorPosition2.x + _player.size/2) && 
            (_player.position.y < doorPosition1.y + _player.size/2))||
            (_player.position.x < doorPosition3.x - _player.size/2 &&
            _player.position.x > doorPosition4.x + _player.size/2 &&
            _player.position.y < doorPosition3.y + _player.size/2))
          {
            if (_player.position.y < doorPosition3.y - _player.size/2) 
            {
              _player.roomImIn = "none";
            }
          } else 
          {
            insideRoomCollision(_player);
          }
        }
      }
    }
    //------------------------------
    //---------- vertical ----------
    //------------------------------
    else if (roomOrientation == RoomOrientation.vertical) 
    {
      //---------- top ----------
      if (roomPlacement == RoomPlacement.top) {
        if (_player.roomImIn == "none") {
          if (((_player.position.y < doorPosition1.y - _player.size/2) && 
            (_player.position.y > doorPosition2.y + _player.size/2) && 
            (_player.position.x > doorPosition1.x - _player.size/2)) ||
            (_player.position.y < doorPosition3.y - _player.size/2 &&
            _player.position.y > doorPosition4.y + _player.size/2 &&
            _player.position.x > doorPosition3.x - _player.size/2))
          {
            if (_player.position.x > doorPosition3.x + _player.size/2) 
            {
              _player.roomImIn = roomName;
            }
          } else 
          {
            outsideRoomCollision(roomOrientation, _player);
          }
        } else if (_player.roomImIn == roomName) {
          if (((_player.position.y < doorPosition1.y - _player.size/2) && 
            (_player.position.y > doorPosition2.y + _player.size/2) && 
            (_player.position.x < doorPosition1.x + _player.size/2)) ||
            (_player.position.y < doorPosition3.y - _player.size/2 &&
            _player.position.y > doorPosition4.y + _player.size/2 &&
            _player.position.x < doorPosition3.x + _player.size/2))
          {
            if (_player.position.x < doorPosition3.x - _player.size/2) 
            {
              _player.roomImIn = "none";
            }
          } else 
          {
            insideRoomCollision(_player);
          }
        }
        //---------- Bottom ----------
      } else if (roomPlacement == RoomPlacement.bottom) {
        if (_player.roomImIn == "none") {
          if (((_player.position.y < doorPosition1.y - _player.size/2) && 
            (_player.position.y > doorPosition2.y + _player.size/2) && 
            (_player.position.x < doorPosition1.x + _player.size/2)) ||
            (_player.position.y < doorPosition3.y - _player.size/2 &&
            _player.position.y > doorPosition4.y + _player.size/2 &&
            _player.position.x < doorPosition3.x + _player.size/2))
          {
            if (_player.position.x < doorPosition3.x - _player.size/2) 
            {
              _player.roomImIn = roomName;
            }
          } else 
          {
            outsideRoomCollision(roomOrientation, _player);
          }
        } else if (_player.roomImIn == roomName) {
          if (((_player.position.y < doorPosition1.y - _player.size/2) && 
            (_player.position.y > doorPosition2.y + _player.size/2) && 
            (_player.position.x > doorPosition1.x - _player.size/2)) ||
            (_player.position.y < doorPosition3.y - _player.size/2 &&
            _player.position.y > doorPosition4.y + _player.size/2 &&
            _player.position.x > doorPosition3.x - _player.size/2))
          {
            if (_player.position.x > doorPosition3.x + _player.size/2) 
            {
              _player.roomImIn = "none";
            }
          } else 
          {
            insideRoomCollision(_player);
          }
        }
      }
    }
  }

  //--------------------------------------------
  //---------- Outside room collision ----------
  //--------------------------------------------
  void outsideRoomCollision(RoomOrientation _roomOrientation, Player _player) {
    if (_player.position.y < (position.y + size.y/2 + _player.size/2) && 
      _player.position.y > (position.y - size.y/2 -_player.size/2) && 
      _player.position.x < (position.x + size.x/2 + _player.size/2) &&
      (_player.position.x > position.x - size.x/2 - _player.size/2)) {
      //---------- horizontal ----------
      if (_roomOrientation == RoomOrientation.horizontal) {
        if (_player.velocity.y > 0) {

          _player.position.y = position.y - size.y/2 - _player.size/2;
        } else if (_player.velocity.y < 0) {

          _player.position.y = position.y + size.y/2 + _player.size/2;
        } else if (_player.velocity.x > 0) {

          _player.position.x = position.x - size.x/2 - _player.size/2;
        } else if (_player.velocity.x < 0) {

          _player.position.x = position.x + size.x/2 + _player.size/2;
      }
    }
   }
  }

  //-------------------------------------------
  //---------- Inside room collision ----------
  //-------------------------------------------
  void insideRoomCollision(Player _player) {
    if (_player.position.x > position.x + size.x/2 - _player.size/2) {

      _player.position.x = position.x + size.x/2 - _player.size/2;
    } else if (_player.position.x < position.x - size.x/2 + _player.size/2) {

      _player.position.x = position.x - size.x/2 + _player.size/2;
    } else if (_player.position.y > position.y + size.y/2 - _player.size/2) {

      _player.position.y = position.y + size.y/2 - _player.size/2;
    } else if (_player.position.y < position.y - size.y/2 + _player.size/2) {

      _player.position.y = position.y - size.y/2 + _player.size/2;
    }
  }

  //--------------------------
  //---------- Door ----------
  //--------------------------
  //---------- Calc positions ----------
  ArrayList<PVector> calcDoorPosition(DoorPlacement _doorSide, RoomPlacement _roomPlacement, RoomOrientation _roomOrientation)
  {
    ArrayList<PVector> doorPositions = new ArrayList<PVector>();

    //---------- Door is defined depending on room placment----------
    PVector doorPosition1 = new PVector();
    PVector doorPosition2 = new PVector();
    PVector doorPosition3 = new PVector();
    PVector doorPosition4 = new PVector();

    if (_roomPlacement == RoomPlacement.top) 
    {
      doorPosition1 = new PVector(position.x - size.x/2, position.y  + size.y/2);
      doorPosition2 = new PVector(position.x - size.x/2, position.y  + size.y/2);
      doorPosition3 = new PVector(position.x - size.x/2, position.y  + size.y/2);
      doorPosition4 = new PVector(position.x - size.x/2, position.y  + size.y/2);
    } else if (_roomPlacement == RoomPlacement.bottom)
    {
      doorPosition1 = new PVector(position.x + size.x/2, position.y  - size.y/2);
      doorPosition2 = new PVector(position.x + size.x/2, position.y  - size.y/2);
      doorPosition3 = new PVector(position.x + size.x/2, position.y  - size.y/2);
      doorPosition4 = new PVector(position.x + size.x/2, position.y  - size.y/2);
    }


    if (_roomPlacement == RoomPlacement.top) 
    {
      doorPosition1 = new PVector(position.x - size.x/2, position.y  + size.y/2);
      doorPosition2 = new PVector(position.x - size.x/2, position.y  + size.y/2);
      doorPosition3 = new PVector(position.x - size.x/2, position.y  + size.y/2);
      doorPosition4 = new PVector(position.x - size.x/2, position.y  + size.y/2);
    } else if (_roomPlacement == RoomPlacement.bottom)
    {
      doorPosition1 = new PVector(position.x + size.x/2, position.y  - size.y/2);
      doorPosition2 = new PVector(position.x + size.x/2, position.y  - size.y/2);
      doorPosition3 = new PVector(position.x + size.x/2, position.y  - size.y/2);
      doorPosition4 = new PVector(position.x + size.x/2, position.y  - size.y/2);
    }

    //--------------------------------------
    //---------- horizontal rooms ----------
    //--------------------------------------
    if (_roomOrientation == RoomOrientation.horizontal) {
      if (_doorSide == DoorPlacement.right) {

        doorPosition1.x = position.x + size.x/2 - doorDistanceFromBoarder;
        doorPosition2.x = doorPosition1.x - doorSize;
      } else if (_doorSide == DoorPlacement.left) 
      {
        doorPosition2.x = position.x - size.x/2 + doorDistanceFromBoarder;
        doorPosition1.x = doorPosition2.x + doorSize;
      } else if (_doorSide == DoorPlacement.middle) 
      {

        doorPosition1.x = position.x + doorSize/2;
        doorPosition2.x = position.x - doorSize/2;
      } else if (_doorSide == DoorPlacement.rightAndLeft)
      {
        doorPosition1.x = position.x + size.x/2 - doorDistanceFromBoarder;
        doorPosition2.x = doorPosition1.x - doorSize;

        doorPosition4.x = position.x - size.x/2 + doorDistanceFromBoarder;
        doorPosition3.x = doorPosition4.x + doorSize;
      }
    }
    //------------------------------------
    //---------- vertical rooms ----------
    //------------------------------------
    else if (_roomOrientation == RoomOrientation.vertical) {
      if (_doorSide == DoorPlacement.right) {

        doorPosition1.y = position.y + size.y/2 - doorDistanceFromBoarder;
        doorPosition2.y = doorPosition1.y - doorSize;
      } else if (_doorSide == DoorPlacement.left) 
      {
        doorPosition2.y = position.y - size.y/2 + doorDistanceFromBoarder;
        doorPosition1.y = doorPosition2.y + doorSize;
      } else if (_doorSide == DoorPlacement.middle) 
      {

        doorPosition1.y = position.y + doorSize/2;
        doorPosition2.y = position.y - doorSize/2;
      } else if (_doorSide == DoorPlacement.rightAndLeft)
      {
        doorPosition1.y = position.y + size.y/2 - doorDistanceFromBoarder;
        doorPosition2.y = doorPosition1.y - doorSize;

        doorPosition4.y = position.y - size.y/2 + doorDistanceFromBoarder;
        doorPosition3.y = doorPosition4.y + doorSize;
      }
    }
    doorPositions.add(doorPosition1);
    doorPositions.add(doorPosition2);
    doorPositions.add(doorPosition3);
    doorPositions.add(doorPosition4);

    return doorPositions;
  }
  //--------------------------
  //---------- Draw ----------
  //--------------------------
  void drawDoor(DoorPlacement _doorSide, RoomPlacement _roomPlacement, RoomOrientation _roomOrientation) {
    ArrayList<PVector> doorPositions = calcDoorPosition(_doorSide, _roomPlacement, _roomOrientation);

    PVector doorPosition1 = doorPositions.get(0).copy();
    PVector doorPosition2 = doorPositions.get(1).copy();
    PVector doorPosition3 = doorPositions.get(2).copy();
    PVector doorPosition4 = doorPositions.get(3).copy();

    //println(doorPosition1, doorPosition2, doorPosition3, doorPosition4);

    stroke(255);
    strokeWeight(3);

    if (_doorSide == DoorPlacement.rightAndLeft)
    {
      line(doorPosition1.x, doorPosition1.y, doorPosition2.x, doorPosition2.y);
      line(doorPosition3.x, doorPosition3.y, doorPosition4.x, doorPosition4.y);
    } else
    {
      line(doorPosition1.x, doorPosition1.y, doorPosition2.x, doorPosition2.y);
    }
  }
}

//------------------------------
//---------- Small room ----------
//------------------------------
class SmallRoom extends Room
{

  void setSize(RoomOrientation _roomOrientation) {
    if (_roomOrientation == RoomOrientation.horizontal)
    {
      size = new PVector(playScreen.size.copy().x * smallRoomSizePresentage.copy().x, playScreen.size.copy().y * smallRoomSizePresentage.copy().y);
      println("big");
    } else
    {
      size = new PVector(playScreen.size.copy().y * smallRoomSizePresentage.copy().y, playScreen.size.copy().x * smallRoomSizePresentage.copy().x);
    }
  }

  SmallRoom(float _doorDistanceFromBoarder, DoorPlacement _doorSide, RoomSide _roomSide, RoomPlacement _roomPlacement, RoomOrientation _roomOrientation, Hallway _hallway, boolean _roomOverlap, String _roomName) {
    super(_doorDistanceFromBoarder, _doorSide, _roomSide, _roomPlacement, _roomOrientation, _hallway, _roomOverlap, _roomName);
  }
}

//------------------------------
//---------- Medium room ----------
//------------------------------
class MediumRoom extends Room
{

  void setSize(RoomOrientation _roomOrientation) {
    if (_roomOrientation == RoomOrientation.horizontal)
    {
      size = new PVector(playScreen.size.copy().x * mediumRoomSizePresentage.copy().x, playScreen.size.copy().y * mediumRoomSizePresentage.copy().y);
      println("big");
    } else
    {
      size = new PVector(playScreen.size.copy().y * mediumRoomSizePresentage.copy().y, playScreen.size.copy().x * mediumRoomSizePresentage.copy().x);
    }
  }

  MediumRoom(float _doorDistanceFromBoarder, DoorPlacement _doorSide, RoomSide _roomSide, RoomPlacement _roomPlacement, RoomOrientation _roomOrientation, Hallway _hallway, boolean _roomOverlap, String _roomName) {
    super(_doorDistanceFromBoarder, _doorSide, _roomSide, _roomPlacement, _roomOrientation, _hallway, _roomOverlap, _roomName);
  }
}

//------------------------------
//---------- Big room ----------
//------------------------------
class BigRoom extends Room
{

  void setSize(RoomOrientation _roomOrientation) {
    if (_roomOrientation == RoomOrientation.horizontal)
    {
      size = new PVector(playScreen.size.copy().x * bigRoomSizePresentage.copy().x, playScreen.size.copy().y * bigRoomSizePresentage.copy().y);
      println("big");
    } else
    {
      size = new PVector(playScreen.size.copy().y * bigRoomSizePresentage.copy().y, playScreen.size.copy().x * bigRoomSizePresentage.copy().x);
    }
  }

  BigRoom(float _doorDistanceFromBoarder, DoorPlacement _doorSide, RoomSide _roomSide, RoomPlacement _roomPlacement, RoomOrientation _roomOrientation, Hallway _hallway, boolean _roomOverlap, String _roomName) {
    super(_doorDistanceFromBoarder, _doorSide, _roomSide, _roomPlacement, _roomOrientation, _hallway, _roomOverlap, _roomName);
  }
}

//-------------------------------
//---------- Classroom ---------- 
//-------------------------------
class Classroom extends Room
{ 
  void setSize(RoomOrientation _roomOrientation)
  {
    if (_roomOrientation == RoomOrientation.horizontal)
    {
      size = new PVector(playScreen.size.copy().x * classroomSizePresentage.copy().x, playScreen.size.copy().y * classroomSizePresentage.copy().y);
      println("class");
    } else
    {
      size = new PVector(playScreen.size.copy().y * classroomSizePresentage.copy().y, playScreen.size.copy().x * classroomSizePresentage.copy().x);
    }
  }

  Classroom(float _doorDistanceFromBoarder, DoorPlacement _doorSide, RoomSide _roomSide, RoomPlacement _roomPlacement, RoomOrientation _roomOrientation, Hallway _hallway, boolean _roomOverlap, String _roomName) {
    super(_doorDistanceFromBoarder, _doorSide, _roomSide, _roomPlacement, _roomOrientation, _hallway, _roomOverlap, _roomName);
  }
}

//--------------------------------------
//---------- Medium classroom ---------- 
//--------------------------------------
class MediumClassroom extends Room
{ 
  void setSize(RoomOrientation _roomOrientation)
  {
    if (_roomOrientation == RoomOrientation.horizontal)
    {
      size = new PVector(playScreen.size.copy().x * mediumClassroomSizePresentage.copy().x, playScreen.size.copy().y * mediumClassroomSizePresentage.copy().y);
      println("class");
    } else
    {
      size = new PVector(playScreen.size.copy().y * mediumClassroomSizePresentage.copy().y, playScreen.size.copy().x * mediumClassroomSizePresentage.copy().x);
    }
  }

  MediumClassroom(float _doorDistanceFromBoarder, DoorPlacement _doorSide, RoomSide _roomSide, RoomPlacement _roomPlacement, RoomOrientation _roomOrientation, Hallway _hallway, boolean _roomOverlap, String _roomName) {
    super(_doorDistanceFromBoarder, _doorSide, _roomSide, _roomPlacement, _roomOrientation, _hallway, _roomOverlap, _roomName);
  }
}
