class movimiento {

  PImage lider;

  float x=50;
  float y=50;

  PImage lidero;
  float n=300;
  float r=300;

  int maxImages = 3;
  int imageIndex = 0;
  /*
    0 - Left
    1 - Right
    2 - Up
    3 - Down
    4 - W
    5 - A
    6 - S
    7 - D
  */
  int[] keys = new int[8];
  PImage [] images = new PImage[maxImages];
  
  

  void initializeKeys(){
    for (int i = 0; i < keys.length-1; i++){
      keys[i] = 0;
    }
  }
void draw() {
  println("new frame");
}
  void lider() {
    keyPress();
    float[] tempvars = mover(x,y, 0);
    x = tempvars[0];
    y = tempvars[1];
    for (int i = 0; i < images.length; i++) {
      images[i] = loadImage("lider"+i+".png");
    }
    frameRate(15);
    imageMode(CENTER);
    
    image(images[imageIndex], x, y, 43, 53);
    imageIndex = (imageIndex+1) % images.length;
    
    
    
  }

  void lidero() {
    keyPress();
    float[] tempvars = mover(n,r, 1);
    n = tempvars[0];
    r = tempvars[1];
    lidero=loadImage("lidero0.png");
    image(lidero, n, r, 43, 53);
    
  }
  
  /*
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
  */
  float[] mover(float xvar, float yvar, int player){
    
    if (player == 0){
      if (keys[0] == 1){
         xvar -= 6;
      }
      if (keys[1] == 1){
         xvar += 6;
      }
      if (keys[2] == 1){
         yvar -= 9;
      }
      if (keys[3] == 1){
         yvar += 6;
      }
    }else{
      if (keys[4] == 1){
         xvar -= 6;
      }
      if (keys[5] == 1){
         xvar += 6;
      }
      if (keys[6] == 1){
         yvar -= 9;
      }
      if (keys[7] == 1){
         yvar += 6;
      }
    }
    float[] temp = new float[2];
    temp[0] = xvar;
    temp[1] = yvar;
    return temp;
  }

void keyPress(){
      if (key == CODED)
      {
           if (keyCode == LEFT){
             keys[0] = 1;
           }
           if (keyCode == RIGHT){
             keys[1] = 1;
           }
           if (keyCode == UP){
             keys[2] = 1;
           }
           if (keyCode == DOWN){
             keys[3] = 1;
           }
    }else{
            if (key == 'a'){
             keys[4] = 1;
           }
           if (key == 'd'){
             keys[5] = 1;
           }
           if (key == 'w'){
             keys[6] = 1;
           }
           if (key == 's'){
             keys[7] = 1;
           }
    }
}
void releaseKey(int keyVar){
  keys[keyVar] = 0;
}
/*
  void moveru() {
    println("KeyCode: "+keyCode);
    if (keyPressed) {
      if (key=='a') {

        n -= 6;
      } else if (key=='d') {

        n += + 6;
      }
      if (key=='w') {

        r -= 9;
      } else if (key=='s') {

        r += 6;
      }
    }
  }
*/
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
