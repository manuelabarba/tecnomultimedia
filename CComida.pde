class Comida {
  PImage[] comida = new PImage[13];
  int num;
  //float x3, y1, x1, x2, x4, y2, distancia3, distancia4, distancia5;
  float distancia, distancia2, distancia3, x1, menos, y1, y2,y3;
  int puntaje = 0;
  int estado;
  int yy;



  Comida() {
    for (int i=0; i<comida.length; i++) {
      comida[i] = loadImage( "comidita"+i+".png");
    }
    menos = random(50, 70);
    // x3= random(200, 300);
      x1= random(1, 600);
    // x2= random(100, 200);
    // x4= random(400, 600);
    y1= -500;
    y2= -100;
    y3= -1000;
    estado = 2;
    yy= 500;
  }

  void dibujar() {
    image(comida[3], 0, 0);
    image(comida[0], x1/2, y1);
    image(comida[1], x1/3, y3);
    image(comida[2], x1, y2);
    image(comida[4], x1/4, y2);
    image(comida[5], x1*2, y3);
    image(comida[6], x1/4, y1);
    image(comida[7], x1*3, y3);
    image(comida[8], x1/2, y1);
    image(comida[9], x1, y2);
    image(comida[10], x1*2, y3);
    image(comida[11], x1*6, y3);
    image(comida[12], x1*4, y2);
    puntaje();
  }
  void comidacayendo() {
    y1= y1+ random(5);
    if (y1>600) {
      y1=-500;
    }
    y2= y2+ random(5);
    if (y2>600) {
      y2=-100;
    }
    y3= y3+ random(5);
    if(y3>600){
      y3=-800;
    }
  }
  void choque() {
    // distancia = dist(x1, y1, mouseX, yy);
    // distancia2= dist(x1, y2, mouseX, yy);
    if (mousePressed) {
      float distancia = dist(x1, y1, mouseX, yy);
      float distancia2 = dist(x1,y2,mouseX,yy);
      float distancia3 = dist(x1,y3,mouseX,yy);
      if (distancia < 200 || distancia2 < 200 || distancia3 < 200) {
        puntaje++;
      }
    }
  }
  void puntaje() {
    text("Puntaje = "+ puntaje, 400, 20);
    if (puntaje> 300) {
      background(0);
      text("Ganaste", 300, 300, 100, 100);
    }
  }
}
