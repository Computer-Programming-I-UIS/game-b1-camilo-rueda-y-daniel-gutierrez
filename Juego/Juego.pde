int e = 0;

//Clase para el movimiento del personaje
movimiento movimiento;

//Usamos una librería minim para reproducir sonido
import ddf.minim.*;
Minim minim;
AudioPlayer player;

//Fuente del título
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
PImage boton;
PImage edad;

//este array servirá para almacenar las imágenes
PImage [] images = new PImage[maxImages];



void setup() {
  
  //Objeto para el movimiento
  movimiento = new movimiento();
  
  //Tamaño de la ventana
  size(1060, 490);

  //Se carga el fondo
  Fondo=loadImage("nosmatan.jpg");
  //Y se inserta en el array las posiciones del personaje
  for (int i = 0; i < images.length; i++) {
    images[i] = loadImage("lider" + i + ".png");
  
  boton = loadImage("playbutton.png");
  edad = loadImage("trece.png");

  //Aquí cargamos la fuente del título
  font = loadFont("titulo.vlw");

  //Aquí agregamos el sonido
  minim = new Minim(this);
  player = minim.loadFile("menu.mp3"); 
  }

  //Y esto permitirá que el sonido se reproduzca en el menú
  if (menu) {
    player.loop();
  }
}



void draw() {
  
   switch(e){
    
    case 1:
    y = 7;
    break;
    
    default:
        //Se establece el fondo
    image(Fondo, 0, 0, width, height);
    
    image(boton,width*0.4,height*0.4,width*0.2,height*0.25);
    
    image(edad, width*0.03, height*0.8, width*0.05, height*0.15);

    //Y el título
    strokeWeight(23);
    stroke(0);
    textFont(font, 80);
    text("Líderes Sociales' Quest", width*0.083, height*0.1, width*0.91666, height*0.4);
    
    rect();
    
  }
  //if (menu) {
  //  //Se establece el fondo
  //  image(Fondo, 0, 0, width, height);
    
  //  image(boton,width/2,height/2,width*0.1,height*0.1);

  //  //Y el título
  //  strokeWeight(23);
  //  stroke(0);
  //  textFont(font, 80);
  //  text("Líderes Sociales' Quest", width*0.083, height*0.1, width*0.91666, height*0.4);
    
  }
