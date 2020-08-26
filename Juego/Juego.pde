
movimiento movimiento;
menus menus;
int mode = 0;
 PImage Fondo;
 PImage Ciudadfondo;
 PImage edad;
 
 int nivel= 1;
 
 float n=1000;
 float r=400;
  
 float x=50;
 float y=400;
 
 

void setup(){
  size(1060,490);

  
  
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
    break;
  case 1:
    background(Fondo);
  movimiento.lider();
  movimiento.lidero();
  movimiento.mapa();
  movimiento.mover();
  movimiento.moveru();
  menus.presione();
  movimiento.muros();
    break;
    
  case 2:
  background(0);
  menus.menujuego();

  
  break;
  
  case 3:
  background(Ciudadfondo);
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
  if ( key == ' ' ) mode = 1;
  if ( (key == 'r') || (key == 'R')) { 
    println("reset"); 
    mode = 0;
    y=400;
    r=400;
    x=50;
    n=1000;
    nivel=1;
  }
  if (( key == 'm') || (key == 'M')) mode = 2;
  if (( key == 't') || (key == 'T')) mode = 1;
  
  println("mode: "+mode);
}

 
  
 

  
