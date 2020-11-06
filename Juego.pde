class Juego {
  PImage [] comida = new PImage[4];
  Presentacion presen;
  Comida comidita;
  Mano manito;
  int estado;

  Juego() {
    for (int i=0; i<comida.length; i++) {
      comida[i] = loadImage("comidita"+i+".png");
    }
    presen = new Presentacion();
    comidita = new Comida();
    manito = new Mano();
    estado = 1;
  }

  void draw() {
    background(255);
    //presen.keyPressed();
    comidita.comidacayendo();
    //comidita.mousePressed();
    comidita.choque();

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
