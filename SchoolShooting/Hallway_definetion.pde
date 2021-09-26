Hallway hallway1;
Hallway hallway2;
Hallway hallway3;
Hallway hallway4;
Hallway hallway5;
Hallway hallway6;
Hallway hallway7;
Hallway hallway8;
Hallway hallway9;
Hallway hallway10;
Hallway hallway11;
Hallway hallway12;
Hallway hallway13;
Hallway hallway14;
Hallway hallway15;
Hallway hallway16;
Hallway hallway17;
Hallway hallway18;
Hallway hallway19;
Hallway hallway20;
Hallway hallway21;
Hallway hallway22;
Hallway hallway23;
Hallway hallway24;
Hallway hallway25;
Hallway hallway26;
Hallway hallway27;
Hallway hallway28;
Hallway hallway29;
Hallway hallway30;
Hallway hallway31;
Hallway hallway32;

//----------------------------------------
//--------------- Hallways ---------------
//----------------------------------------
void hallwayDefinetion()
{
  hallway1 = new Hallway(new PVector(0, 0), HallwayOrentation.horizontal, 1);
  hallway2 = new Hallway(new PVector(0 - playScreen.size.x * 1, 0), HallwayOrentation.horizontal, 2);
  hallway3 = new Hallway(new PVector(0 - playScreen.size.x * 2, 0), HallwayOrentation.horizontal, 3);
  hallway4 = new Hallway(new PVector(0 - playScreen.size.x * 3, 0), HallwayOrentation.horizontal, 4);
  hallway5 = new Hallway(new PVector(0 - playScreen.size.x * 4, 0), HallwayOrentation.horizontal, 5);
  
  hallway6 = new Hallway(new PVector(0 - playScreen.size.x * 5, 0), HallwayOrentation.horizontal, 6);
  hallway7 = new Hallway(new PVector(0 - playScreen.size.x * 5, 0 - playScreen.size.x * 1), HallwayOrentation.vertical, 7);
  hallway8 = new Hallway(new PVector(0 - playScreen.size.x * 5, 0 - playScreen.size.x * 2), HallwayOrentation.vertical, 8);
  hallway9 = new Hallway(new PVector(0 - playScreen.size.x * 5, 0 - playScreen.size.x * 3), HallwayOrentation.vertical, 9);
  hallway10 = new Hallway(new PVector(0 - playScreen.size.x * 5, 0 - playScreen.size.x * 4), HallwayOrentation.vertical, 10);

  hallway11 = new Hallway(new PVector(0 - playScreen.size.x * 5, 0 - playScreen.size.x * 5), HallwayOrentation.vertical, 11);
  hallway12 = new Hallway(new PVector(0 - playScreen.size.x * 5, 0 - playScreen.size.x * 6), HallwayOrentation.vertical, 12);
  hallway13 = new Hallway(new PVector(0 - playScreen.size.x * 5, 0 - playScreen.size.x * 6 - playScreen.size.y), HallwayOrentation.horizontal, 13);
  hallway14 = new Hallway(new PVector(0 - playScreen.size.x * 4, 0 - playScreen.size.x * 6 - playScreen.size.y), HallwayOrentation.horizontal, 14);
  hallway15 = new Hallway(new PVector(0 - playScreen.size.x * 3, 0 - playScreen.size.x * 6 - playScreen.size.y), HallwayOrentation.horizontal, 15);

  hallway16 = new Hallway(new PVector(0 - playScreen.size.x * 2, 0 - playScreen.size.x * 6 - playScreen.size.y), HallwayOrentation.horizontal, 16);
  hallway17 = new Hallway(new PVector(0 - playScreen.size.x * 1, 0 - playScreen.size.x * 6 - playScreen.size.y), HallwayOrentation.horizontal, 17);
  hallway18 = new Hallway(new PVector(0, 0 - playScreen.size.x * 6 - playScreen.size.y), HallwayOrentation.horizontal, 18);
  hallway19 = new Hallway(new PVector(0 - playScreen.size.x * -1, 0 - playScreen.size.x * 6 - playScreen.size.y), HallwayOrentation.horizontal, 19);
  hallway20 = new Hallway(new PVector(0 - playScreen.size.x * -2, 0 - playScreen.size.x * 6 - playScreen.size.y), HallwayOrentation.horizontal, 20);

  hallway21 = new Hallway(new PVector(0 - playScreen.size.x * -3, 0 - playScreen.size.x * 6 - playScreen.size.y), HallwayOrentation.horizontal, 21);
  hallway22 = new Hallway(new PVector(0 - playScreen.size.x * -4, 0 - (playScreen.size.x * 6) - playScreen.size.y), HallwayOrentation.horizontal, 22);
  hallway23 = new Hallway(new PVector(0 - playScreen.size.x * -4.4375, 0 - playScreen.size.x * 6), HallwayOrentation.vertical, 23);
  hallway24 = new Hallway(new PVector(0 - playScreen.size.x * -4.4375, 0 - playScreen.size.x * 5), HallwayOrentation.vertical, 24);
  hallway25 = new Hallway(new PVector(0 - playScreen.size.x * -4.4375, 0 - playScreen.size.x * 4), HallwayOrentation.vertical, 25);

  hallway26 = new Hallway(new PVector(0 - playScreen.size.x * -4.4375, 0 - playScreen.size.x * 3), HallwayOrentation.vertical, 26);
  hallway27 = new Hallway(new PVector(0 - playScreen.size.x * -4.4375, 0 - playScreen.size.x * 2), HallwayOrentation.vertical, 27);
  hallway28 = new Hallway(new PVector(0 - playScreen.size.x * -4.4375, 0 - playScreen.size.x * 1), HallwayOrentation.vertical, 28);
  hallway29 = new Hallway(new PVector(0 - playScreen.size.x * -4, 0), HallwayOrentation.horizontal, 29);
  hallway30 = new Hallway(new PVector(0 - playScreen.size.x * -3, 0), HallwayOrentation.horizontal, 30);

  hallway31 = new Hallway(new PVector(0 - playScreen.size.x * -2, 0), HallwayOrentation.horizontal, 31);
  hallway32 = new Hallway(new PVector(0 - playScreen.size.x * -1, 0), HallwayOrentation.horizontal, 32);
}
