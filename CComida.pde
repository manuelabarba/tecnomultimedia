class Comida {
  PImage[] comida = new PImage[7];
  int num;
  float x3, y1, x1, x2, x4, y2;
  float distancia, distancia2, distancia3, distancia4, distancia5, distancia6, distancia7, distancia8;
  int puntaje = 0;


  Comida() {
    for (int i=0; i<comida.length; i++) {
      comida[i] = loadImage( "comidita"+i+".png");
    }
    x3= random(200, 300);
    x1= random(400, 600);
    x2= random(100, 200);
    x4= random(400, 600);
    y1= -500;
    y2= -100;
    estado=2;
  }

  void dibujar() {
    image(comida[3], 0, 0);
    image(comida[0], x3, y1);
    image(comida[1], x1, y2);
    image(comida[2], x2, y1);
    image(comida[4], x2, y1);
    image(comida[5], x2, y2);
    image(comida[6], x4, y1);
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
  }
  void choque() {
    distancia = dist( mouseX, mouseY, x1, y1);
    distancia2= dist(mouseX, mouseY, x2, y2);
    distancia3= dist(mouseX, mouseY, x3, y1);
    distancia4= dist(mouseX, mouseY, x4, y1);
    distancia5= dist(mouseX, mouseY, x3, y2);
    distancia6= dist(mouseX, mouseY, x4, y2);
    distancia7= dist(mouseX, mouseY, x2, y1);
    distancia8= dist(mouseX, mouseY, x1, y2);
  }
  void mousePressed() {
    if (mousePressed) {
      if (distancia < 0.5 || distancia2 < 0.5 || distancia3 < 0.5 || distancia4 < 0.5) {
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
