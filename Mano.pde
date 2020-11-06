class Mano {
  PImage mano;
  int xx, yy;

  Mano() {
    mano = loadImage("hand.png");
    xx= 400;
    yy=500;
  }
  void dibujar() {
    image(mano, mouseX, yy, 100, 100);
  }
}
