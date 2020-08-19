int maxImages = 3;
int imageIndex = 1;
float x=50;
float y=50;
PImage Lider;
PImage Fondo;
PImage [] images = new PImage[maxImages];



void setup(){
  size(1060,490);
  Fondo=loadImage("fondo1.jpg");
  for(int i = 0; i < images.length; i++){
    images[i] = loadImage("lider" + i + ".png");
  }
  frameRate(10);
}
void draw(){
  background(Fondo);
  image(images[imageIndex],x,y,50,60);
  imageIndex = (imageIndex+1)% images.length;
  if(keyPressed && (key== CODED)){
      if(keyCode == LEFT){
        x-=16;
      }
      if(keyCode== RIGHT){
        x+=16;
        
      }
      if(keyCode== UP){
        y -=16;
        
        
        
      } if(keyCode==DOWN){
        y+=16;
        
      }
    }
     if(y>=400){
      y = 400;
    }
    if(x>width){
     x=0;
    }
    else if(x<0){
      x=width;
    }
    
}
    
  
