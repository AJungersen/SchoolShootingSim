MediumRoom mediumRoom_5;
MediumRoom mediumRoom_11;
MediumRoom mediumRoom_17;
MediumRoom mediumRoom_20;
MediumRoom mediumRoom_27;
MediumRoom mediumRoom_28;
MediumRoom mediumRoom_30;
MediumRoom mediumRoom_32;

void mediumRoomDefinetion()
{
  mediumRoom_5 = new MediumRoom(100, DoorPlacement.right, RoomSide.left, RoomPlacement.top, RoomOrientation.horizontal, hallway5, false, "mediumRoom_5");
  mediumRoom_11 = new MediumRoom(100, DoorPlacement.right, RoomSide.left, RoomPlacement.top, RoomOrientation.vertical, hallway11, true, "mediumRoom_11");
  mediumRoom_17 = new MediumRoom(100, DoorPlacement.left, RoomSide.left, RoomPlacement.top, RoomOrientation.horizontal, hallway17, false, "mediumRoom_17");
  mediumRoom_20 = new MediumRoom(100, DoorPlacement.left, RoomSide.right, RoomPlacement.top, RoomOrientation.horizontal, hallway20, true, "mediumRoom_20");
  mediumRoom_27 = new MediumRoom(100, DoorPlacement.left, RoomSide.left, RoomPlacement.top, RoomOrientation.vertical, hallway27, false, "mediumRoom_27");
  mediumRoom_28 = new MediumRoom(100, DoorPlacement.left, RoomSide.middle, RoomPlacement.top, RoomOrientation.vertical, hallway28, false, "mediumRoom_28");
  mediumRoom_30 = new MediumRoom(100, DoorPlacement.right, RoomSide.middle, RoomPlacement.top, RoomOrientation.horizontal, hallway30, false, "mediumRoom_30");
  mediumRoom_32 = new MediumRoom(100, DoorPlacement.right, RoomSide.middle, RoomPlacement.top, RoomOrientation.horizontal, hallway32, false, "mediumRoom_32");
}
