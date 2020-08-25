Mario mari;

boolean juego = false;


import sprites.*;
import sprites.maths.*;
import sprites.utils.*;

//Definir el objeto Sprite
Sprite mario;
StopWatch sw = new StopWatch();

//Clase para el menú
Menu menu;

//Clase para el movimiento del personaje
movimiento movimiento;

//Usamos una librería minim para reproducir sonido
import ddf.minim.*;

//Estas variables booleanas permitirán establecer qué escenario vamos a ver
int state = 0;

//Funcionan como contadores para el ciclo for
int maxImages = 3;

//Posición inicial del personaje
float x=50;
float y=50;

//Aquí se anexa tanto al personaje como el fondo
PImage Lider;

//este array servirá para almacenar las imágenes
PImage [] images = new PImage[maxImages];



void setup() {
  frameRate(30);
      menu = new Menu(this,"data/menu.mp3");
  movimiento = new movimiento();
  size(1060, 490);
  for (int i = 0; i < images.length; i++) {
    images[i] = loadImage("lider" + i + ".png");
  }
  
  mari = new Mario(this);
  
  mario = new Sprite(this, "data/mario.png", 12, 1, 1);
  mario.setFrameSequence(8, 12, 0.1);
}



void draw() {
   
  switch (state) {
  case 0:
    menu.bk();
    break;

  case 1:
    background(0);
    
    movimiento.lider();
    keyReleased();
    
   
    movimiento.lidero();
    keyReleased();
    movimiento.mapa();
    break;
    
    case 2:
    background(255);
    break;

  default:
    background(0);
    break;
  }
}
void keyReleased() {
  if (key == CODED)
      {
           if (keyCode == LEFT){
             movimiento.releaseKey(0);
           }
           if (keyCode == RIGHT){
             movimiento.releaseKey(1);
           }
           if (keyCode == UP){
             movimiento.releaseKey(2);
           }
           if (keyCode == DOWN){
             movimiento.releaseKey(3);
           }
    }else{
            if (keyCode == 'a'){
             movimiento.releaseKey(4);
           }
           if (keyCode == 'd'){
             movimiento.releaseKey(5);
           }
           if (keyCode == 'w'){
             movimiento.releaseKey(6);
           }
           if (keyCode == 's'){
             movimiento.releaseKey(7);
           }
    }
  
}
void keyPressed(){
  movimiento.keyPress();
}
void mousePressed() {
  //image(boton, width*0.4, height*0.4, widthplayer.loop();*0.2, height*0.25);
  if (mouseX >= width*0.4 && mouseX <= width*0.6 && mouseY >= height*0.4 && mouseY <= width*0.65) {
    state = 1;
    juego = true;
  }
  
  if(juego){
  if(mouseX >=0 && mouseX<=width*0.05 && mouseY >=0 && mouseY <=height*0.05){
    state = 2;
  }
  }
}
