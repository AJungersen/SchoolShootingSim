BigRoom bigRoom_2;
BigRoom bigRoom_7;
BigRoom bigRoom_18;
BigRoom bigRoom_23;
BigRoom bigRoom_25;

void bigRoomDefinetion()
{
  bigRoom_2 = new BigRoom(100, DoorPlacement.rightAndLeft, RoomSide.left, RoomPlacement.top, RoomOrientation.horizontal, hallway2, true, "bigRoom_2");
  bigRoom_7 = new BigRoom(100, DoorPlacement.rightAndLeft, RoomSide.left, RoomPlacement.top, RoomOrientation.vertical, hallway7, true, "bigRoom_7");
  bigRoom_18 = new BigRoom(100, DoorPlacement.rightAndLeft, RoomSide.right, RoomPlacement.top, RoomOrientation.horizontal, hallway18, true, "bigRoom_18");
  bigRoom_23 = new BigRoom(100, DoorPlacement.rightAndLeft, RoomSide.right, RoomPlacement.top, RoomOrientation.vertical, hallway23, true, "bigRoom_23");
  bigRoom_25 = new BigRoom(100, DoorPlacement.rightAndLeft, RoomSide.right, RoomPlacement.top, RoomOrientation.vertical, hallway25, true, "bigRoom_25");
}
