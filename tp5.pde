Juego juego;
int estado;
Presentacion presen;
Comida comidita;
Mano manito;


void setup() {
  size(800, 600);
  juego = new Juego();
  presen = new Presentacion();
  comidita = new Comida();
  manito = new Mano();
  estado = 1;
}

void draw() {
  juego.draw();
}
