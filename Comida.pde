class Comida {
  PImage[] comida = new PImage[13]; //imagenes comida juego
  int num, estado, yy;
  float distancia, distancia2, distancia3, distancia4, distancia5, distancia6, distancia7, distancia8, x1, y1, y2, y3;
  int puntaje = 0;
  boolean toca; //colision


  Comida() {
    for (int i=0; i<comida.length; i++) {
      comida[i] = loadImage( "comidita"+i+".png");
    }
    x1= random(1, 600);
    y1= -500; //para que los platos caigan en diferentes alturas/momentos 
    y2= -100;
    y3= -1000;
    yy= 500;
    surface.setResizable(true);
  }

  void dibujar() {
    image(comida[3], 0, 0);
    image(comida[0], x1/2, y1);
    image(comida[1], x1/3, y3);
    image(comida[2], x1, y2);
    image(comida[4], x1/4, y2);
    image(comida[5], x1*2, y3);
    image(comida[6], x1/4, y2);
    image(comida[7], x1*3, y3);
    image(comida[8], x1/2, y1);
    image(comida[9], x1, y2);
    image(comida[10], x1*2, y3);
    image(comida[11], x1*6, y3);
    image(comida[12], x1*4, y2);
    puntaje();
  }

  void comidacayendo() {
    y1= y1+ random(15);
    if (y1>600) {
      y1=-500;
    }
    y2= y2+ random(10);
    if (y2>600) {
      y2=-100;
    }
    y3= y3+ random(10);
    if (y3>600) {
      y3=-800;
    }
  }

  void choque() {
    if (mousePressed) {
      float distancia = dist(x1/2, y1, mouseX, yy); //calcula distancias entre dos puntos
      float distancia2 = dist(x1/3, y2, mouseX, yy);
      float distancia3 = dist(x1/4, y2, mouseX, yy);
      float distancia4 = dist(x1*2, y3, mouseX, yy);
      float distancia5 = dist(x1*3, y3, mouseX, yy);
      float distancia6 = dist(x1*6, y3, mouseX, yy);
      float distancia7 = dist(x1*4, y2, mouseX, yy);
      float distancia8 = dist(x1, y2, mouseX, yy);

      if (distancia < 100 || distancia2 < 100 || distancia3 < 100 || distancia4 < 100 || distancia5 < 100 || distancia6 < 100 || distancia7 < 100 || distancia8 < 100) {
        toca = true;
      } else {
        toca = false;
      }
      if (toca == true) {
        puntaje= puntaje+1;
      }
    }
  }
  void puntaje() {
    text("Puntaje = "+ puntaje, escX(400), escY(20));
    if (puntaje> 100) {
      background(0, 255, 0);
      textAlign(CENTER);
      fill(255);
      text("¡Ganaste!", escX(400), escY(300));
      textAlign(CENTER);
      text("presiona la letra c para continuar con la aventura", escX(400), escY(500));
    }
  }
  float escX(float valor_) {
    return map( valor_, 0, 800, 0, width);
  }
  float escY(float valor_) {
    return map( valor_, 0, 600, 0, height);
  }
}
