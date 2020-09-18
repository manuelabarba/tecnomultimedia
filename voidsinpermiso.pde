void sinpermiso() {
  image(images[3], 0, 0, escX(800), escY(600));
  fill(0);
  text("En la mesa hay platos deliciosos, y sillas muy cómodas", escX(50), escY(150), escX(350), escY(100));
  rect(escX(50), escY(300), escX(300), escY(50));
  rect(escX(400), escY(300), escX(300), escY(50));
  fill(255);
  text("Dejarlos así y seguir inspeccionando", escX(50), escY(300), escX(300), escY(200));
  text("Sentarse en una de las sillas y comer", escX(400), escY(300), escX(300), escY(200));
}
