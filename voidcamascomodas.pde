void camascomodas() {
  image(images[8], 0, 0, escX(800), escY(600));
  fill(0);
  text("En la habitación hay camas muy cómodas", escX(400), escY(50));
  fill(255);
  rect(escX(50), escY(250), escX(300), escY(50));
  rect(width/2, escY(250), escX(300), escY(50));
  fill(0);
  text("Terminar la aventura e irme a casa", escX(50), escY(250), escX(300), escY(100));
  text("ENTER", escX(50), escY(300), escX(300), escY(100));
  text("Tengo sueño, así que duermo en una de las camas", escX(400), escY(250), escX(300), escY(100));
  text("FLECHA PARA ARRIBA", escX(400), escY(300), escX(300), escY(100));
}
