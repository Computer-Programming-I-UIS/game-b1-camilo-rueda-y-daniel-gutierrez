
movimiento movimiento;
menus menus;
int mode = 0;
 PImage Fondo;
 PImage Ciudadfondo;
 PImage edad;
 PImage Ciudaddestruida;
 PImage gameover;
 
 int nivel= 1;
 
 float n=1000;
 float r=400;
  
 float x=50;
 float y=400;
  
 int mido = 3;
 PFont font;
 
 

void setup(){
  size(1060,490);
  
  gameover=loadImage("gameover.jpg");
  gameover.resize(width,height);

  Ciudaddestruida=loadImage("ciudaddestruida.jpg");
  Ciudaddestruida.resize(width,height);
  
  Ciudadfondo=loadImage("ciudad.jpg");
  Ciudadfondo.resize(width,height);
  Fondo=loadImage("fondo1.jpg");
  Fondo.resize(width,height);
  movimiento = new movimiento();
  menus = new menus();

  
}
void draw(){
  
  switch(mode) {
  case 0:
    
    menus.nenu();
    edad=loadImage("trece.png");
   image(edad,50,360,50,100);
   
    break;
  case 1:
   background(0);
  menus.menujuego();
    
    break;
    
  case 2:
 background(gameover);
 
  
  break;
  
  case 3:
   background(Fondo);
   movimiento.pinchos();
  movimiento.lider();
  movimiento.lidero();
  movimiento.mapa();
  movimiento.mover();
  movimiento.moveru();
  menus.presione();
  movimiento.muros();

  break;
  
  case 4:
   background(Ciudadfondo);
  movimiento.lider();
  movimiento.lidero();
  movimiento.mapa();
  movimiento.mover();
  movimiento.moveru();
  menus.presione();
  movimiento.muros();
 
  break;
  
  case 5:
  background(Ciudaddestruida);
 movimiento.lider();
  movimiento.lidero();
  movimiento.mapa();
  movimiento.mover();
  movimiento.moveru();
  menus.presione();
  movimiento.muros();
  
  
  
  
  
  break;

  default:
    println("you should never see this");
    break;
  }
}

void keyPressed() {
  if ( key == ' ' ) mode = 3;
  if ( (key == 'r') || (key == 'R')) { 
    println("reset"); 
    mode = 0;
    y=400;
    r=400;
    x=50;
    n=1000;
    nivel=1;
  }
  if (( key == 'm') || (key == 'M')) mode = 1;
  if (( key == 't') || (key == 'T')) mode = mido;
  
  
  println("mode: "+mode);
}

 
  
 

  
