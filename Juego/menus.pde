

class menus {

  AudioPlayer MusicaMenu ;



  //Para el texto del titulo
  PFont font;
  PFont espacio;

  PImage edad;
  PImage play;
  PImage fondoverde;


  void nenu() {
    MusicaMenu = minim.loadFile("menusong.mp3");
    MusicaMenu.setGain(-40);
    edad=loadImage("trece.png");

    fondoverde=loadImage("menu.jpg");
    fondoverde.resize(width, height);
    font = loadFont("titulo.vlw");
    espacio = loadFont("presione_espacio.vlw");

    background(fondoverde);
    image(edad, 50, 360, 50, 100);
    rectMode(CORNERS);
    fill(0);



    fill(255);
    textFont(font, 80);
    text("Líderes Sociales' Quest", width*0.083, height*0.1, width*0.91666, height*0.4);

    strokeWeight(23);
    stroke(0);
    fill(255);
    textFont(espacio);
    textSize(35);
    textAlign(CENTER, CENTER);
    text("Presione espacio para continuar", width/2, height/2);
  }
  void presione() {

    textFont(font, 29);

    fill(0, 100, 200);
    text("M para opciones", 840, 40);

    textFont(font, 40);
    fill(0, 100, 200);
    text(nivel, 120, 50);
    fill(255, 0, 0);
    text("Nivel :", 10, 50);
  }

  void menujuego() {
    rectMode(CORNERS);
    fill(255, 0, 0);
    rect(400, 80, 720, 150, 25, 25, 25, 25);
    fill(0);
    textFont(font, 29);
    text("R para menu principal", 420, 125);

    fill(255, 0, 0);
    rect(430, 180, 690, 250, 25, 25, 25, 25);
    fill(0);
    textFont(font, 29);
    text("T para continuar", 460, 225);
  }
}
