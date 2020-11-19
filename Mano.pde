class Mano {
  PImage mano; //mano juego
  int xx, yy;

  Mano() {
    mano = loadImage("hand.png");
    xx= 400;
    yy= 500;
    surface.setResizable(true);
  }
  void dibujar() {
    image(mano, mouseX, yy, escX(100), escY(100));
  }
  float escX(float valor_) {
    return map( valor_, 0, 800, 0, width);
  }
  float escY(float valor_) {
    return map( valor_, 0, 600, 0, height);
  }
}
