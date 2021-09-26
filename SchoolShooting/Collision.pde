void collisionChecks() {
  for (int i = 0; i < players.size(); i++)
  {
    switch(players.get(i).hallwayImIn)
    {
    case 1:
      hallway1.collisionHorisontalWallTop(players.get(i));

      hallway1.collisionHorizontalDoorBottom(HallwayDoorState.unlocked, players.get(i));

      smallRoom_1_1.collisionRoom(players.get(i));
      smallRoom_1_2.collisionRoom(players.get(i));
      smallRoom_1_3.collisionRoom(players.get(i));
      break;

    case 2:
      hallway2.collisionHorisontalWallTop(players.get(i));

      classroom_2.collisionRoom(players.get(i));
      bigRoom_2.collisionRoom(players.get(i));
      break;

    case 3:
      hallway3.collisionHorisontalWallTop(players.get(i));
      hallway3.collisionHorisontalWallBottom(players.get(i));
      
      bigRoom_2.collisionRoom(players.get(i));
      break;

    case 4:
      hallway4.collisionHorisontalWallTop(players.get(i));

      smallRoom_4_1.collisionRoom(players.get(i));
      smallRoom_4_2.collisionRoom(players.get(i));
      smallRoom_4_3.collisionRoom(players.get(i));
      smallRoom_4_4.collisionRoom(players.get(i));
      smallRoom_4_5.collisionRoom(players.get(i));
      break;

    case 5:
      hallway5.collisionHorisontalWallTop(players.get(i));
      hallway5.collisionHorisontalWallBottom(players.get(i));

      mediumRoom_5.collisionRoom(players.get(i));
      break;

    case 6:
      hallway6.collisionVerticalWallLeft(players.get(i));

      hallway6.collisionRightInsideCornerTop(players.get(i));

      classroom_6.collisionRoom(players.get(i));
      break;

    case 7:
      hallway7.collisionVerticalWallRight(players.get(i));

      classroom_7.collisionRoom(players.get(i));
      bigRoom_7.collisionRoom(players.get(i));
      break;

    case 8:
      hallway8.collisionVerticalWallRight(players.get(i));

      classroom_8.collisionRoom(players.get(i));
      bigRoom_7.collisionRoom(players.get(i));
      break;

    case 9:
      hallway9.collisionVerticalWallRight(players.get(i));

      classroom_9.collisionRoom(players.get(i));
      smallRoom_9.collisionRoom(players.get(i));
      break;

    case 10:
      hallway10.collisionVerticalWallRight(players.get(i));

      classroom_10.collisionRoom(players.get(i));
      break;

    case 11:
      hallway11.collisionVerticalWallRight(players.get(i));

      classroom_11.collisionRoom(players.get(i));
      mediumRoom_11.collisionRoom(players.get(i));
      break;

    case 12:
      hallway12.collisionVerticalWallRight(players.get(i));

      classroom_12.collisionRoom(players.get(i));
      mediumRoom_11.collisionRoom(players.get(i));
      break;

    case 13:
      hallway13.collisionHorisontalWallTop(players.get(i));
      hallway13.collisionVerticalWallLeft(players.get(i));
      break;

    case 14:
      hallway14.collisionHorisontalWallTop(players.get(i));

      classroom_14.collisionRoom(players.get(i));
      break;

    case 15:
      hallway15.collisionHorisontalWallTop(players.get(i));

      smallRoom_15_1.collisionRoom(players.get(i));
      smallRoom_15_2.collisionRoom(players.get(i));
      smallRoom_15_3.collisionRoom(players.get(i));
      smallRoom_15_4.collisionRoom(players.get(i));
      smallRoom_15_5.collisionRoom(players.get(i));
      smallRoom_15_6.collisionRoom(players.get(i));
      break;

    case 16:
      hallway16.collisionHorisontalWallTop(players.get(i));

      classroom_16.collisionRoom(players.get(i));
      break;

    case 17:
      hallway17.collisionHorisontalWallTop(players.get(i));

      classroom_17.collisionRoom(players.get(i));
      mediumRoom_17.collisionRoom(players.get(i));
      break;

    case 18:
      hallway18.collisionHorisontalWallTop(players.get(i));
      hallway18.collisionHorisontalWallBottom(players.get(i));

      smallRoom_18.collisionRoom(players.get(i));
      bigRoom_18.collisionRoom(players.get(i));
      break;

    case 19:
      hallway19.collisionHorisontalWallTop(players.get(i));

      classroom_19.collisionRoom(players.get(i));
      bigRoom_18.collisionRoom(players.get(i));
      break;

    case 20:
      hallway20.collisionHorisontalWallTop(players.get(i));

      classroom_20.collisionRoom(players.get(i));
      mediumRoom_20.collisionRoom(players.get(i));
      break;

    case 21:
      hallway21.collisionHorisontalWallTop(players.get(i));

      classroom_21.collisionRoom(players.get(i));
      mediumRoom_20.collisionRoom(players.get(i));
      break;

    case 22:
      hallway22.collisionHorisontalWallTop(players.get(i));
      hallway22.collisionVerticalWallRight(players.get(i));

      smallRoom_22.collisionRoom(players.get(i));
      break;

    case 23:
      hallway23.collisionVerticalWallRight(players.get(i));
      hallway23.collisionVerticalWallLeft(players.get(i));

      //classroom_23.collisionRoom(players.get(i));
      bigRoom_23.collisionRoom(players.get(i));
      break;

    case 24:
      hallway24.collisionVerticalWallRight(players.get(i));

      classroom_24.collisionRoom(players.get(i));
      smallRoom_24.collisionRoom(players.get(i));
      bigRoom_23.collisionRoom(players.get(i));
      break;

    case 25:
      hallway25.collisionVerticalWallRight(players.get(i));

      classroom_25.collisionRoom(players.get(i));
      smallRoom_25.collisionRoom(players.get(i));
      bigRoom_25.collisionRoom(players.get(i));
      break;

    case 26:
      hallway26.collisionVerticalWallRight(players.get(i));

      classroom_26.collisionRoom(players.get(i));
      bigRoom_25.collisionRoom(players.get(i));
      break;

    case 27:
      hallway27.collisionVerticalWallRight(players.get(i));

      classroom_27.collisionRoom(players.get(i));
      mediumRoom_27.collisionRoom(players.get(i));
      break;

    case 28:
      hallway28.collisionVerticalWallRight(players.get(i));

      smallRoom_28_1.collisionRoom(players.get(i));
      smallRoom_28_2.collisionRoom(players.get(i));
      smallRoom_28_3.collisionRoom(players.get(i));
      mediumRoom_28.collisionRoom(players.get(i));
      break;

    case 29:
      hallway29.collisionVerticalWallRight(players.get(i));
      hallway29.collisionLeftInsideCornerTop(players.get(i));

      classroom_29.collisionRoom(players.get(i));
      break;

    case 30:
      hallway30.collisionHorisontalWallTop(players.get(i));

      classroom_30.collisionRoom(players.get(i));
      mediumRoom_30.collisionRoom(players.get(i));
      break;

    case 31:
      hallway31.collisionHorisontalWallTop(players.get(i));

      classroom_31.collisionRoom(players.get(i));
      smallRoom_31.collisionRoom(players.get(i));
      break;

    case 32:
      hallway32.collisionHorisontalWallTop(players.get(i));

      classroom_32.collisionRoom(players.get(i));
      mediumRoom_32.collisionRoom(players.get(i));
      break;
    }
  }
}
