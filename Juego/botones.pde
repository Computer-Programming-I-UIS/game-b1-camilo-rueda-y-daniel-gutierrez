
buttonMenu [] BTitle = new buttonMenu[5];
button [] BMaps = new button[10];
button [] BMapSelector = new button[3];
int mapMapSelected = 0;  //Mapa que se muestra en el selector de mapas


buttonEditor [] EButtons = new buttonEditor[3];
buttonC xErrorE;  //X para cerrar los errores del editor
int tileSelected = 0;  //Almacena el tipo de tipo de tile seleccionado en el editor de mapas

void setupButtons() {
  //Pantalla Inicio
  textSize(50);
  int dyButtons = round(textAscent()) + 5;
  BTitle[0] = new buttonMenu(width/2 - 2*round(textWidth("Jugar")/4), height/2, 2*round(textWidth("Jugar")/2), round(textAscent()), "Jugar");
  BTitle[1] = new buttonMenu(width/2 - 2*round(textWidth("Mapas")/4), height/2 + dyButtons, 2*round(textWidth("Mapas")/2), round(textAscent()), "Mapas");
  BTitle[2] = new buttonMenu(width/2 - 2*round(textWidth("Créditos")/4), height/2 + 2*dyButtons, 2*round(textWidth("Créditos")/2), round(textAscent()), "Créditos");
  BTitle[3] = new buttonMenu(width/2 - 2*round(textWidth("¿Cómo Jugar?")/4), height/2 + 3*dyButtons, 2*round(textWidth("¿Cómo Jugar?")/2), round(textAscent()), "¿Cómo Jugar?");
  BTitle[4] = new buttonMenu(width/2 - 2*round(textWidth("Salir")/4), height/2 + 4*dyButtons, 2*round(textWidth("Salir")/2), round(textAscent()), "Salir");


  class button {
    //Posición
    int x, y;
    int sizeX, sizeY;

    //Función
    boolean prsd = false;  //Presionado o no
    boolean mslc = false;  //Mouse sobre el botón o no
    int status = 0;  //estado en el que está (presionado o no) ó (0,1,2,3,4...)
    int numStatus;  //Numero de posiciones en las que puede estar el botón 

    //Apariencia
    PImage imageB;
    color [] colorB = {color(#358C42), color(#40280A)};
    int colorS = 0;  //Color seleccionado
    String [] info;  //Almacena el texto que se muestra en cada estado
    //int sizeTxt = 13;
    int sizeTxt = 30;
    boolean soundCheck = false;  //Para que no se repita el sonido

    String folder;
    String imageName;

    //Cuando el botón NO tiene imagen
    button(int _x, int _y, int _sizeX, int _sizeY, int _numStatus, int _ColorS, String _info1) {
      x = _x;
      y = _y;
      sizeX = _sizeX;
      sizeY = _sizeY;

      numStatus = _numStatus;
      ;
      info = new String [numStatus];
      info[0] = _info1;

      colorS = constrain(_ColorS, 0, colorB.length);
      imageB = null;
    }

    //Cuando el botón tiene imagen y solo una opción 
    button(int _x, int _y, int _sizeX, int _sizeY, String _imageName, String _folder) {
      x = _x;
      y = _y;
      sizeX = _sizeX;
      sizeY = _sizeY;

      numStatus = 1;
      info = null;

      imageName = _imageName;
      folder = _folder;

      if (!fileExists(imageName, folder)) {  //Si no existe
        println("¡ERROR!");
        println("El archivo", imageName, "NO existe o no se ecuentra en la carpeta \"data\\", folder, "\\\"");
        println("Revisa el nombre del archivo y la carpeta \"data\\", folder, "\\\"");
        exit();
      } else {
        imageB = loadImage("data/"+folder+"/"+imageName);
      }
    }

    void setInfo(int _i, String _info) {
      _i = constrain(_i, 0, numStatus -1);
      info[_i] = _info;
    }

    boolean checkMouse() {
      if (mouseX > x && mouseX < x + sizeX && mouseY > y && mouseY < y + sizeY) {  //Si el puntero está sobre el botón
        mslc = true;
        if (!soundCheck) {
          soundButton.trigger();
          soundCheck = true;
        }
        return true;
      } else {
        mslc = false;
        soundCheck = false;
        return false;
      }
    }

    int changeStatus() {
      prsd = !prsd;
      status++;
      if (status == numStatus)  status = 0;  //Se resetea al llegar al máximo
      return status;
    }

    void display() {

      if (mslc) {
        stroke(255);
        strokeWeight(4);  //Si el mouse está sobre el botón
      } else {
        stroke(150);
        strokeWeight(1);
      }

      fill(colorB[colorS]);
      rect(x, y, sizeX, sizeY);  //Dibuja el botón

      if (info != null) {
        if (numStatus == 1 && info[0] == "+") {
          stroke(255);
          strokeWeight(5);
          strokeJoin(MITER);
          line(x + sizeX/4, y + sizeY/4, x + 3*sizeX/4, y + sizeY/2);
          line(x + sizeX/4, y + 3*sizeY/4, x + 3*sizeX/4, y + sizeY/2);
        } else if (numStatus == 1 && info[0] == "-") {
          stroke(255);
          strokeWeight(5);
          strokeJoin(MITER);
          line(x + sizeX/4, y + sizeY/2, x + 3*sizeX/4, y + sizeY/4);
          line(x + sizeX/4, y + sizeY/2, x + 3*sizeX/4, y + 3*sizeY/4);
        } else {
          fill(255);
          textFont(pixelFont);
          textSize(sizeTxt);
          textAlign(CENTER, CENTER);
          text(info[status], x + sizeX/2, y + sizeY/2);
        }
      } else {
        image(imageB, x+2, y+2, sizeX-4, sizeY-4);
      }
    }
  }
