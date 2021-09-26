void drawHallways()
{
  switch(player.hallwayImIn)
  {
  case 1:
    drawHallway31();
    drawHallway32();
    drawHallway1();
    drawHallway2();
    drawHallway3();
    break;

  case 2:
    drawHallway32();
    drawHallway1();
    drawHallway2();
    drawHallway3();
    drawHallway4();
    break;

  case 3:
    drawHallway1();
    drawHallway2();
    drawHallway3();
    drawHallway4();
    drawHallway5();
    break;

  case 4:
    drawHallway2();
    drawHallway3();
    drawHallway4();
    drawHallway5();
    drawHallway6();
    break;

  case 5:
    drawHallway3();
    drawHallway4();
    drawHallway5();
    drawHallway6();
    drawHallway7();
    break;

  case 6:
    drawHallway4();
    drawHallway5();
    drawHallway6();
    drawHallway7();
    drawHallway8();
    break;

  case 7:
    drawHallway5();
    drawHallway6();
    drawHallway7();
    drawHallway8();
    drawHallway9();
    break;

  case 8:
    drawHallway6();
    drawHallway7();
    drawHallway8();
    drawHallway9();
    drawHallway10();
    break;

  case 9:
    drawHallway7();
    drawHallway8();
    drawHallway9();
    drawHallway10();
    drawHallway11();
    break;

  case 10:
    drawHallway8();
    drawHallway9();
    drawHallway10();
    drawHallway11();
    drawHallway12();
    break;

  case 11:
    drawHallway9();
    drawHallway10();
    drawHallway11();
    drawHallway12();
    drawHallway13();
    break;

  case 12:
    drawHallway10();
    drawHallway11();
    drawHallway12();
    drawHallway13();
    drawHallway14();
    break;

  case 13:
    drawHallway11();
    drawHallway12();
    drawHallway13();
    drawHallway14();
    drawHallway15();
    break;

  case 14:
    drawHallway12();
    drawHallway13();
    drawHallway14();
    drawHallway15();
    drawHallway16();
    break;

  case 15:
    drawHallway13();
    drawHallway14();
    drawHallway15();
    drawHallway16();
    drawHallway17();
    break;

  case 16:
    drawHallway14();
    drawHallway15();
    drawHallway16();
    drawHallway17();
    drawHallway18();
    break;

  case 17:
    drawHallway15();
    drawHallway16();
    drawHallway17();
    drawHallway18();
    drawHallway19();
    break;

  case 18:
    drawHallway16();
    drawHallway17();
    drawHallway18();
    drawHallway19();
    drawHallway20();
    break;

  case 19:
    drawHallway17();
    drawHallway18();
    drawHallway19();
    drawHallway20();
    drawHallway21();
    break;

  case 20:
    drawHallway18();
    drawHallway19();
    drawHallway20();
    drawHallway21();
    drawHallway22();
    break;

  case 21:
    drawHallway19();
    drawHallway20();
    drawHallway21();
    drawHallway22();
    drawHallway23();
    break;

  case 22:
    drawHallway20();
    drawHallway21();
    drawHallway22();
    drawHallway23();
    drawHallway24();
    break;

  case 23:
    drawHallway21();
    drawHallway22();
    drawHallway23();
    drawHallway24();
    drawHallway25();
    break;

  case 24:
    drawHallway22();
    drawHallway23();
    drawHallway24();
    drawHallway25();
    drawHallway26();
    break;

  case 25:
    drawHallway23();
    drawHallway24();
    drawHallway25();
    drawHallway26();
    drawHallway27();
    break;

  case 26:
    drawHallway24();
    drawHallway25();
    drawHallway26();
    drawHallway27();
    drawHallway28();
    break;

  case 27:
    drawHallway25();
    drawHallway26();
    drawHallway27();
    drawHallway28();
    drawHallway29();
    break;

  case 28:
    drawHallway26();
    drawHallway27();
    drawHallway28();
    drawHallway29();
    drawHallway30();
    break;

  case 29:
    drawHallway27();
    drawHallway28();
    drawHallway29();
    drawHallway30();
    drawHallway31();
    break;

  case 30:
    drawHallway28();
    drawHallway29();
    drawHallway30();
    drawHallway31();
    drawHallway32();
    break;

  case 31:
    drawHallway29();
    drawHallway30();
    drawHallway31();
    drawHallway32();
    drawHallway1();
    break;

  case 32:
    drawHallway30();
    drawHallway31();
    drawHallway32();
    drawHallway1();
    drawHallway2();
    break;
  }
}

//------------------------------------------//
//---------- Hallway construction ----------//
//------------------------------------------//
//-----------------------
//---------- 1 ----------
//-----------------------
void drawHallway1()
{
  hallway1.drawHorisontalWallTop();
  
  hallway1.drawHorizontalDoorBottom();
  
  smallRoom_1_1.drawRoom(player);
  smallRoom_1_2.drawRoom(player);
  smallRoom_1_3.drawRoom(player);
  
  println(smallRoom_1_3.position);
}

//-----------------------
//---------- 2 ----------
//-----------------------
void drawHallway2()
{
  hallway2.drawHorisontalWallTop();
  
  classroom_2.drawRoom(player);
  bigRoom_2.drawRoom(player);
}

//-----------------------
//---------- 3 ----------
//-----------------------
void drawHallway3()
{
  hallway3.drawHorisontalWallTop();
  hallway3.drawHorisontalWallBottom();
}

//-----------------------
//---------- 4 ----------
//-----------------------
void drawHallway4()
{
  hallway4.drawHorisontalWallTop();
  
  smallRoom_4_1.drawRoom(player);
  smallRoom_4_2.drawRoom(player);
  smallRoom_4_3.drawRoom(player);
  smallRoom_4_4.drawRoom(player);
  smallRoom_4_5.drawRoom(player);
}

//-----------------------
//---------- 5 ----------
//-----------------------
void drawHallway5()
{
  hallway5.drawHorisontalWallTop();
  hallway5.drawHorisontalWallBottom();
  
  mediumRoom_5.drawRoom(player);
}

//-----------------------
//---------- 6 ----------
//-----------------------
void drawHallway6()
{
  hallway6.drawVerticalWallLeft();
  
  hallway6.drawLeftOutsideCornerBottom();
  hallway6.drawRightInsideCornerTop();
  
  classroom_6.drawRoom(player);
}

//-----------------------
//---------- 7 ----------
//-----------------------
void drawHallway7()
{
  hallway7.drawVerticalWallRight();
  
  classroom_7.drawRoom(player);
  bigRoom_7.drawRoom(player);
}

//-----------------------
//---------- 8 ----------
//-----------------------
void drawHallway8()
{
  hallway8.drawVerticalWallRight();
  
  classroom_8.drawRoom(player);
}

//-----------------------
//---------- 9 ----------
//-----------------------
void drawHallway9()
{
  hallway9.drawVerticalWallRight();
  
  classroom_9.drawRoom(player);
  smallRoom_9.drawRoom(player);
}

//------------------------
//---------- 10 ----------
//------------------------
void drawHallway10()
{
  hallway10.drawVerticalWallRight();
  
  classroom_10.drawRoom(player);
}

//------------------------
//---------- 11 ----------
//------------------------
void drawHallway11()
{
  hallway11.drawVerticalWallRight();
  
  classroom_11.drawRoom(player);
  mediumRoom_11.drawRoom(player);
}

//------------------------
//---------- 12 ----------
//------------------------
void drawHallway12()
{
  hallway12.drawVerticalWallRight();
  
  classroom_12.drawRoom(player);
}

//------------------------
//---------- 13 ----------
//------------------------
void drawHallway13()
{
  hallway13.drawHorisontalWallTop();
  hallway13.drawVerticalWallLeft();
  hallway13.drawLeftOutsideCornerTop();
}

//------------------------
//---------- 14 ----------
//------------------------
void drawHallway14()
{
  hallway14.drawHorisontalWallTop();
  
  classroom_14.drawRoom(player);
}

//------------------------
//---------- 15 ----------
//------------------------
void drawHallway15()
{
  hallway15.drawHorisontalWallTop();
  
  smallRoom_15_1.drawRoom(player);
  smallRoom_15_2.drawRoom(player);
  smallRoom_15_3.drawRoom(player);
  smallRoom_15_4.drawRoom(player);
  smallRoom_15_5.drawRoom(player);
  smallRoom_15_6.drawRoom(player);
}

//------------------------
//---------- 16 ----------
//------------------------
void drawHallway16()
{
  hallway16.drawHorisontalWallTop();
  
  classroom_16.drawRoom(player);
}

//------------------------
//---------- 17 ----------
//------------------------
void drawHallway17()
{
  hallway17.drawHorisontalWallTop();
  
  classroom_17.drawRoom(player);
  mediumRoom_17.drawRoom(player);
}

//------------------------
//---------- 18 ----------
//------------------------
void drawHallway18()
{
  hallway18.drawHorisontalWallTop();
  hallway18.drawHorisontalWallBottom();
  
  smallRoom_18.drawRoom(player);
  bigRoom_18.drawRoom(player);
}

//------------------------
//---------- 19 ----------
//------------------------
void drawHallway19()
{
  hallway19.drawHorisontalWallTop();
  
  classroom_19.drawRoom(player);
}

//------------------------
//---------- 20 ----------
//------------------------
void drawHallway20()
{
  hallway20.drawHorisontalWallTop();
  
  classroom_20.drawRoom(player);
  mediumRoom_20.drawRoom(player);
}

//------------------------
//---------- 21 ----------
//------------------------
void drawHallway21()
{
  hallway21.drawHorisontalWallTop();
  
  classroom_21.drawRoom(player);
}

//------------------------
//---------- 22 ----------
//------------------------
void drawHallway22()
{
  hallway22.drawHorisontalWallTop();
  hallway22.drawVerticalWallRight();
  hallway22.drawRightOutsideCornerTop();
  
  smallRoom_22.drawRoom(player);
  //println("p",player.position, "r", smallRoom_22.position, "m", mediumRoom_20.position, "c", classroom_21.position,"h", hallway22.positionLeftCornerTop);
}

//------------------------
//---------- 23 ----------
//------------------------
void drawHallway23()
{
  hallway23.drawVerticalWallRight();
  hallway23.drawVerticalWallLeft();
  
  //classroom_23.drawRoom(player);
  bigRoom_23.drawRoom(player);
}

//------------------------
//---------- 24 ----------
//------------------------
void drawHallway24()
{
  hallway24.drawVerticalWallRight();
  
  classroom_24.drawRoom(player);
  smallRoom_24.drawRoom(player);
}

//-----------------------
//---------- 25 ----------
//-----------------------
void drawHallway25()
{
  hallway25.drawVerticalWallRight();
  
  classroom_25.drawRoom(player);
  smallRoom_25.drawRoom(player);
  bigRoom_25.drawRoom(player);
}

//-----------------------
//---------- 26 ----------
//-----------------------
void drawHallway26()
{
  hallway26.drawVerticalWallRight();
  
  classroom_26.drawRoom(player);
}

//------------------------
//---------- 27 ----------
//------------------------
void drawHallway27()
{
  hallway27.drawVerticalWallRight();
  
  classroom_27.drawRoom(player);
  mediumRoom_27.drawRoom(player);
}

//------------------------
//---------- 28 ----------
//------------------------
void drawHallway28()
{
  hallway28.drawVerticalWallRight();
  
  smallRoom_28_1.drawRoom(player);
  smallRoom_28_2.drawRoom(player);
  smallRoom_28_3.drawRoom(player);
  mediumRoom_28.drawRoom(player);
}

//-----------------------
//---------- 29 ----------
//-----------------------
void drawHallway29()
{
  hallway29.drawVerticalWallRight();
  hallway29.drawRightOutsideCornerBottom();
  hallway29.drawLeftInsideCornerTop();
  
  classroom_29.drawRoom(player);
}

//------------------------
//---------- 30 ----------
//------------------------
void drawHallway30()
{
  hallway30.drawHorisontalWallTop();
  
  classroom_30.drawRoom(player);
  mediumRoom_30.drawRoom(player);
}

//------------------------
//---------- 31 ----------
//------------------------
void drawHallway31()
{
  hallway31.drawHorisontalWallTop();
  
  classroom_31.drawRoom(player);
  smallRoom_31.drawRoom(player);
}

//------------------------
//---------- 32 ----------
//------------------------
void drawHallway32()
{
  hallway32.drawHorisontalWallTop();
  
  classroom_32.drawRoom(player);
  mediumRoom_32.drawRoom(player);
}
