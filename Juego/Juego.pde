//Aquí añadimos la librería de sonido para añadir una canción de fondo
import processing.sound.*;
SoundFile sfondo;

void setup() {
  //Todo esto corresponderá al fondo visual
  size(1060, 490);
  PImage Fondo;
  Fondo=loadImage("fondo1.jpg");
  image(Fondo, 0, 0);

  //Y aquí añadimos la canción
  sfondo = new SoundFile(this, "el-preso.mp3");
  sfondo.play();
}
