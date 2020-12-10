class Comida {
  PImage[] comida = new PImage[13]; //imagenes comida juego
  int num, estado, yy;
  float distancia, distancia2, distancia3, x1, x2, x3, y1, y2, y3;
  int puntaje = 0;
  boolean toca; //colision


  Comida() {
    for (int i=0; i<comida.length; i++) {
      comida[i] = loadImage( "comidita"+i+".png");
    }
    x1= random(1, 600);
    x2= random(300,600);
    x3= random(200,400);
    y1= random(-100, 800);
    y2= random(-400,800);
    y3= random(-700,800);
    yy= 500;
    surface.setResizable(true);
  }

  void dibujar() {
    image(comida[3], 0, 0);
    image(comida[0], x1, y2);
    image(comida[1], x2, y1);
    image(comida[2], x1, y2);
    image(comida[4], x3, y3);
    image(comida[5], x2, y1);
    image(comida[6], x2, y1);
    image(comida[7], x1, y2);
    image(comida[8], x3, y3);
    image(comida[9], x1, y2);
    image(comida[10], x2, y1);
    image(comida[11], x2, y1);
    image(comida[12], x1, y2);
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
      float distancia = dist(x1,y2,mouseX,yy);
      float distancia2= dist(x2,y1,mouseX,yy);
      float distancia3= dist(x3,y3,mouseX,yy);

      if (distancia < 100){ 
        puntaje= puntaje+1;
        y2=-300;
      }
      if (distancia2 < 100){
        puntaje= puntaje+1;
        y1=-300;
      }
      if(distancia3 < 100){
        puntaje= puntaje+1;
        y3=-300;
      }
    }
  }
  void puntaje() {
    text("Puntaje = "+ puntaje, escX(400), escY(20));
    if (puntaje> 25) {
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
