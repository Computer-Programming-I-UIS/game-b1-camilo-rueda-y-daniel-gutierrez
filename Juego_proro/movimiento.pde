class movimiento {
  
  PImage lider;
  PImage muro;
  PImage puerta;
  PImage pinchos;
  PImage lidero;
  
 int maxImages = 3;
 int imageIndex = 0;
 
 PImage [] images = new PImage[maxImages];
 
  
  
  void lider(){
   for(int i = 0; i < images.length; i++){
        images[i] = loadImage("lider"+i+".png");
        }
  frameRate(15);
  imageMode(CENTER);
  
  image(images[imageIndex],x,y,43,53);
  imageIndex = (imageIndex+1) % images.length;
    
  }
  
  void lidero(){
    
    lidero=loadImage("lidero0.png");
    image(lidero,n,r,43,53);
    
  }
  
  void mover(){
     if(keyPressed && (key== CODED)){
      if(keyCode == LEFT){
        x-=10;
      }
       if(keyCode== RIGHT){
        x+=10;
        
      }
     
      if(keyCode== UP){
        y -=18;
        
      } if(keyCode==DOWN){
        y+=10;
        
      }
    }
   
  }
  void moveru(){
   
    if(keyPressed){
    if(key=='a'){
      
     n = n - 10;
    }
     else if(key=='d'){
      
     n = n + 10;
    }
     if(key=='w'){
      
     r = r - 18;
    }
     else if(key=='s'){
      
     r = r + 10;
    }
  }
  }
  void mapa(){
   rectMode(CORNERS);
    fill(0);
   rect(845,28,1039,33);
   
    
     if(y>=400){
      y = 400;
    }
    if(x>width){
     x=0;
    }
    else if(x<0){
      x=width;
    }
    if(y<400){
      y = y + 6;
    } 
    if(r<400){
      r = r + 6;
    } 
    if(r>=400){
      r = 400;
    }
    if(n>width){
     n=0;
    }
    else if(n<0){
      n=width;
    }
     else if(r>=305 && r<369){
       if(n>600 && n<1100){
      
      r=305;
       }
    }
     if(y>=305 && y<369){
       if(x>600 && x<1100){
      
      y=305;
       }
    }
     if(r>255 && r<320){
       if(n>0 && n<400){
      
      r=255;
       } 
    }
    if(y>255 && y<320){
       if(x>0 && x<400){
      
      y=255;
       } 
    }
    if(r>135 && r<200){
       if(n>500 && n<1100){
      
      r=135;
       } 
    }
    if(y>135 && y<200){
       if(x>500 && x<1100){
      
      y=135;
       } 
    }
      if(y>80 && y<136 && r>80 && r<136){
      if(x>950 && x<1000 && n>950 && x<1000){
        
        mido = mido + 1;
        mode = mido;
        
        y=400;
        r=400;
        x=50;
        n=1000;
        nivel = nivel + 1;
      }
    }
    
    if(y>375 && y<475 && r>375 && r<475){
      if(x>475 && x<525 && n>475 && x<525){
        
        
        mode = 2;
        
      }
    }
    /*
    else if(y>230 && y<280 && r>230 && r<280){
      if(x>230 && x<280 && n>230 && x<280){
        
        
        mode = 2;
        
      }
    }*/
         
  }
  
  void muros(){
    
    puerta=loadImage("puerta.jpg");
    muro=loadImage("ladrillo.jpg");
    imageMode(CORNERS);
    image(muro,600,330,1100,370);
    image(muro,0,280,400,320);
    image(muro,500,160,1100,200);
    image(puerta,950,80,1000,160);
    image(muro,0,425,1100,500);
  }
  
  void pinchos(){
    
     imageMode(CENTER);
   pinchos=loadImage("puas.png");
    image(pinchos,500,400,50,50);
    image(pinchos,255,255,50,50);
    
  }
 
  }
  
  
  
  
  
  
  
