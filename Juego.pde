class Juego {
  PImage [] comida = new PImage[4];




  Juego() {
    for (int i=0; i<comida.length; i++) {
      comida[i] = loadImage("comidita"+i+".png");
    }
  }

  void draw() {
    background(255);
    presen.keyPressed();
    comidita.comidacayendo();
    comidita.mousePressed();

    if (estado == 1) {
      presen.dibujar();
    }
    if (estado == 2) {
      comidita.dibujar();
      manito.dibujar();
    }
    if (estado == 1 && keyCode == ENTER) {
      estado = 2;
    }
  }
}
