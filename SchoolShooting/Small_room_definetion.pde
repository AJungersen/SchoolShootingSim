SmallRoom smallRoom_1_1;
SmallRoom smallRoom_1_2;
SmallRoom smallRoom_1_3;

SmallRoom smallRoom_4_1;
SmallRoom smallRoom_4_2;
SmallRoom smallRoom_4_3;
SmallRoom smallRoom_4_4;
SmallRoom smallRoom_4_5;

SmallRoom smallRoom_9;

SmallRoom smallRoom_15_1;
SmallRoom smallRoom_15_2;
SmallRoom smallRoom_15_3;
SmallRoom smallRoom_15_4;
SmallRoom smallRoom_15_5;
SmallRoom smallRoom_15_6;

SmallRoom smallRoom_18;

SmallRoom smallRoom_22;

SmallRoom smallRoom_24;

SmallRoom smallRoom_25;

SmallRoom smallRoom_28_1;
SmallRoom smallRoom_28_2;
SmallRoom smallRoom_28_3;

SmallRoom smallRoom_31;

void smallRoomDefinetion()
{
  smallRoom_1_1 = new SmallRoom(100, DoorPlacement.middle, RoomSide.left, RoomPlacement.top, RoomOrientation.horizontal, hallway1, false, "smallRoom_1_1");
  smallRoom_1_2 = new SmallRoom(100, DoorPlacement.middle, RoomSide.middle, RoomPlacement.top, RoomOrientation.horizontal, hallway1, false, "smallRoom_1_3");
  smallRoom_1_3 = new SmallRoom(100, DoorPlacement.middle, RoomSide.right, RoomPlacement.top, RoomOrientation.horizontal, hallway1, false, "smallRoom_1_2");

  smallRoom_4_1 = new SmallRoom(100, DoorPlacement.middle, RoomSide.left, RoomPlacement.bottom, RoomOrientation.horizontal, hallway4, false, "smallRoom_4_1");
  smallRoom_4_2 = new SmallRoom(100, DoorPlacement.middle, RoomSide.middle, RoomPlacement.bottom, RoomOrientation.horizontal, hallway4, false, "smallRoom_4_2");
  smallRoom_4_3 = new SmallRoom(100, DoorPlacement.middle, RoomSide.right, RoomPlacement.bottom, RoomOrientation.horizontal, hallway4, false, "smallRoom_4_3");
  smallRoom_4_4 = new SmallRoom(100, DoorPlacement.middle, RoomSide.left, RoomPlacement.top, RoomOrientation.horizontal, hallway4, false, "smallRoom_4_4");
  smallRoom_4_5 = new SmallRoom(100, DoorPlacement.middle, RoomSide.right, RoomPlacement.top, RoomOrientation.horizontal, hallway4, false, "smallRoom_4_5");

  smallRoom_9 = new SmallRoom(100, DoorPlacement.middle, RoomSide.left, RoomPlacement.top, RoomOrientation.vertical, hallway9, false, "smallRoom_9");

  smallRoom_15_1 = new SmallRoom(100, DoorPlacement.middle, RoomSide.left, RoomPlacement.top, RoomOrientation.horizontal, hallway15, false, "smallRoom_15_1");
  smallRoom_15_2 = new SmallRoom(100, DoorPlacement.middle, RoomSide.middle, RoomPlacement.top, RoomOrientation.horizontal, hallway15, false, "smallRoom_15_2");
  smallRoom_15_3 = new SmallRoom(100, DoorPlacement.middle, RoomSide.right, RoomPlacement.top, RoomOrientation.horizontal, hallway15, false, "smallRoom_15_3");
  smallRoom_15_4 = new SmallRoom(100, DoorPlacement.middle, RoomSide.left, RoomPlacement.bottom, RoomOrientation.horizontal, hallway15, false, "smallRoom_15_4");
  smallRoom_15_5 = new SmallRoom(100, DoorPlacement.middle, RoomSide.middle, RoomPlacement.bottom, RoomOrientation.horizontal, hallway15, false, "smallRoom_15_5");
  smallRoom_15_6 = new SmallRoom(100, DoorPlacement.middle, RoomSide.right, RoomPlacement.bottom, RoomOrientation.horizontal, hallway15, false, "smallRoom_15_6");

  smallRoom_18 = new SmallRoom(100, DoorPlacement.middle, RoomSide.left, RoomPlacement.top, RoomOrientation.horizontal, hallway18, false, "smallRoom_18");

  smallRoom_22 = new SmallRoom(100, DoorPlacement.middle, RoomSide.right, RoomPlacement.top, RoomOrientation.horizontal, hallway22, false, "smallRoom_22");

  smallRoom_24 = new SmallRoom(100, DoorPlacement.middle, RoomSide.right, RoomPlacement.top, RoomOrientation.vertical, hallway24, false, "smallRoom_24");

  smallRoom_25 = new SmallRoom(100, DoorPlacement.middle, RoomSide.left, RoomPlacement.top, RoomOrientation.vertical, hallway25, false, "smallRoom_25");

  smallRoom_28_1 = new SmallRoom(100, DoorPlacement.middle, RoomSide.left, RoomPlacement.bottom, RoomOrientation.vertical, hallway28, false, "smallRoom_28_1");
  smallRoom_28_2 = new SmallRoom(100, DoorPlacement.middle, RoomSide.middle, RoomPlacement.bottom, RoomOrientation.vertical, hallway28, false, "smallRoom_28_1");
  smallRoom_28_3 = new SmallRoom(100, DoorPlacement.middle, RoomSide.right, RoomPlacement.bottom, RoomOrientation.vertical, hallway28, false, "smallRoom_28_1");

  smallRoom_31 = new SmallRoom(100, DoorPlacement.middle, RoomSide.middle, RoomPlacement.top, RoomOrientation.horizontal, hallway31, false, "smallRoom_31");
}
