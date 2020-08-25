class Menu {
  //Fuente del título
  PFont font;
  PImage Fondo;
  PImage boton;
  PImage edad;
  Minim minim;
  AudioPlayer player;


  Menu(PApplet theApplet, String nombreAudio) {
    minim = new Minim(theApplet);
    player = minim.loadFile(nombreAudio);
    player.loop();
  }

  void bk() {
    Fondo = loadImage("nosmatan.jpg");
    boton = loadImage("playbutton.png");
    edad = loadImage("trece.png");
    font = loadFont("titulo.vlw");

    image(Fondo, 0, 0, width, height);

    image(boton, width*0.4, height*0.4, width*0.2, height*0.25);

    image(edad, width*0.03, height*0.8, width*0.05, height*0.15);

    strokeWeight(23);
    stroke(0);
    textFont(font, 80);
    text("Líderes Sociales' Quest", width*0.083, height*0.1, width*0.91666, height*0.4);
  }
}
