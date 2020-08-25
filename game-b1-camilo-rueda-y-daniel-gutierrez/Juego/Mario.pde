class Mario {
  int pos_x = 0;
int pos_y = 0;
  //Definir el objeto Sprite
  Sprite mario;
  StopWatch sw = new StopWatch();

  Mario(PApplet per ) {
    mario = new Sprite(per, "data/mario.png", 12, 1, 1);
  }
  
  void ma(){
     background(0);
  float elapsedTime = (float) sw.getElapsedTime();
  S4P.updateSprites(elapsedTime);
  pushMatrix();
  translate(width/2, height/2);
  translate(pos_x, pos_y);
  mario.draw();
  popMatrix();

  if (key==CODED)
  {
    if (keyCode==LEFT)
    {
      pos_x-=3;
    } else if (keyCode==RIGHT)
    {
      pos_x+=3;
    } else if (keyCode==UP)
    {
      pos_y-=3;
    } else if (keyCode==DOWN)
    {
      pos_y+=3;
    }
  }

  }
}
