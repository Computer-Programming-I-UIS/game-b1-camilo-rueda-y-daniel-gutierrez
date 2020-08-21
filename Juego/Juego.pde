movimiento movimiento;
 PImage Fondo;
void setup(){
  size(1060,490);
  Fondo=loadImage("fondo1.jpg");
  movimiento = new movimiento();
}
void draw(){
  background(Fondo);
  movimiento.lider();
  movimiento.lidero();
  movimiento.mapa();
  movimiento.mover();
  movimiento.moveru();
}
    
  
