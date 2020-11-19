class Presentacion {
  PImage presentacion; //presentacion del juego

  Presentacion () {
    presentacion = loadImage("comidita3.png");
    surface.setResizable(true);
  }
  void dibujar() {
    image(presentacion, 0, 0);
    fill(255);
    noStroke();
    rect(escX(200), escY(50), escX(400), escY(100));
    textSize(escX(30));
    textAlign(LEFT);
    fill(0);
    text("Lluvia de comida para osos", escX(200), escY(100));
    textSize(escX(25));
    fill(255);
    text("Enter para empezar a jugar", escX(230), escY(500));
    rect(escX(240), escY(300), escX(300), escY(50));
    fill(0);
    text("Instrucciones de juego:", escX(250), escY(325));
    textAlign(CENTER);
    text("Mover el mouse hacia los costados para atrapar los platos haciendo click hasta sumar 100 puntos", escX(150), escY(350), escX(500), escY(200));
  }
  float escX(float valor_) {
    return map( valor_, 0, 800, 0, width);
  }
  float escY(float valor_) {
    return map( valor_, 0, 600, 0, height);
  }
}
