class Juego {
  PImage fondo;
  Comida comida;
  Mano mano;

  Juego() {
    fondo = loadImage("comidita3.png");
    comida = new Comida();
    mano = new Mano();
    image(fondo, 0, 0);
    surface.setResizable(true);
  }

  void jugar() {
    comida.dibujar();
    mano.dibujar();
    comida.comidacayendo();
    comida.choque();
    comida.puntaje();
  }
  float escX(float valor_) {
    return map( valor_, 0, 800, 0, width);
  }
  float escY(float valor_) {
    return map( valor_, 0, 600, 0, height);
  }
}
