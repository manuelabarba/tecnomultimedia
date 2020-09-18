void sueno() {
  image(images[9], 0, 0, escX(800), escY(600));
  fill(0);
  text("Luego de comer, a Ricitos le agarra sueño", escX(400), escY(50));
  fill(255);
  rect(escX(50), escY(300), escX(300), escY(50));
  rect(escX(400), escY(300), escX(300), escY(50));
  fill(0);
  text("Dormir en una cama", escX(50), escY(300), escX(300), escY(100));
  text("Flecha para arriba", escX(50), escY(350), escX(300), escY(100));
  text("Ir a casa a dormir", escX(400), escY(300), escX(300), escY(100));
  text("ENTER", escX(400), escY(350), escX(300), escY(100));
}
