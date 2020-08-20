//Usamos una librería minim para reproducir sonido
import ddf.minim.*;
Minim minim;
AudioPlayer player;

//import processing.sound.*;
//SoundFile file;

PFont font;

//Estas variables booleanas permitirán establecer qué escenario vamos a ver
boolean menu = true;
boolean game = false;

//Funcionan como contadores para el ciclo for
int maxImages = 3;
int imageIndex = 1;

//Posición inicial del personaje
float x=50;
float y=50;

//Aquí se anexa tanto al personaje como el fondo
PImage Lider;
PImage Fondo;

//este array servirá para almacenar las imágenes
PImage [] images = new PImage[maxImages];



void setup() {
  //Tamaño de la ventana
  size(1060, 490);

  //Se carga el fondo
  Fondo=loadImage("nosmatan.jpg");
  //Y se inserta en el array las posiciones del personaje
  for (int i = 0; i < images.length; i++) {
    images[i] = loadImage("lider" + i + ".png");
  }

  //Aquí cargamos la fuente del título
  font = loadFont("titulo.vlw");

  //Aquí agregamos el sonido
  minim = new Minim(this);
  player = minim.loadFile("menu.mp3"); 

  //file = new SoundFile(this, "menu.mp3");
  //file.play();
}



void draw() {

  if (menu) {
    player.play();
    //Se establece el fondo
    image(Fondo, 0, 0, width, height);

    //Y el título
    strokeWeight(23);
    stroke(0);
    textFont(font, 80);
    text("Líderes Sociales' Quest", width*0.083, height*0.1, width*0.91666, height*0.4);
  }

  if (game) {

    //Aquí está el ciclo del personaje
    image(images[imageIndex], x, y, 50, 60);
    imageIndex = (imageIndex+1)% images.length;

    //Aquí, el ciclo if servirá para el movimiento del personaje
    if (keyPressed && (key== CODED)) {
      if (keyCode == LEFT) {
        x-=16;
      }
      if (keyCode== RIGHT) {
        x+=16;
      }
      if (keyCode== UP) {
        y -=16;
      } 
      if (keyCode==DOWN) {
        y+=16;
      }
    }
    if (y>=400) {
      y = 400;
    }
    if (x>width) {
      x=0;
    } else if (x<0) {
      x=width;
    }
  }
}

void mousePressed() {
  game = true;
}
