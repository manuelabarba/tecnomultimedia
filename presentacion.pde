class Presentacion {
  PImage presentacion;
  int estado;

  Presentacion () {
    presentacion = loadImage("comidita3.png");
  }
  void dibujar() {
    image(presentacion, 0, 0);
    fill(255);
    noStroke();
    rect(200, 250, 400, 100);
    textSize(30);
    fill(0);
    text("Lluvia de comida para osos", 200, 300);
    textSize(25);
    fill(255);
    text("Enter para empezar a jugar", 230, 500);
  }
  void keyPressed() {
    if (keyCode == ENTER) {
      estado = 2;
    }
  }
}
