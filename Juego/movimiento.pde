class movimiento {

  PImage lider;

  float x=50;
  float y=50;

  PImage lidero;
  float n=300;
  float r=300;

  int maxImages = 3;
  int imageIndex = 0;

  PImage [] images = new PImage[maxImages];
  
  



  void lider() {
    for (int i = 0; i < images.length; i++) {
      images[i] = loadImage("lider"+i+".png");
    }
    frameRate(15);
    imageMode(CENTER);

    image(images[imageIndex], x, y, 43, 53);
    imageIndex = (imageIndex+1) % images.length;
  }

  void lidero() {

    lidero=loadImage("lidero0.png");
    image(lidero, n, r, 43, 53);
  }

  void mover() {
    if (keyPressed && (key== CODED)) {
      if (keyCode == LEFT) {
        x-=6;
      }
      if (keyCode== RIGHT) {
        x+=6;
      }

      if (keyCode== UP) {
        y -=9;
      } 
      if (keyCode==DOWN) {
        y+=6;
      }
    }
  }
  void moveru() {

    if (keyPressed) {
      if (key=='a') {

        n = n - 6;
      } else if (key=='d') {

        n = n + 6;
      }
      if (key=='w') {

        r = r - 9;
      } else if (key=='s') {

        r = r + 6;
      }
    }
  }
  void mapa() {

    if (y>=400) {
      y = 400;
    }
    if (x>width) {
      x=0;
    } else if (x<0) {
      x=width;
    }
    if (y<400) {
      y = y + 3;
    } 
    if (r<400) {
      r = r + 3;
    } 
    if (r>=400) {
      r = 400;
    }
    if (n>width) {
      n=0;
    } else if (n<0) {
      n=width;
    }
  }
}
