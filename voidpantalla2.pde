void pantalla2() {
  image(images[1], 0, 0, escX(800), escY(600));
  textSize(height/20);
  textAlign(CENTER);
  fill(0);
  text("Ricitos de Oro estaba caminando por el bosque cuando se encontró con una casa", escX(150), escY(200), escX(500), escY(500));
  fill(0);
  rect(escX(50), escY(450), escX(300), escY(50));
  rect(escX(450), escY(450), escX(300), escY(50));
  fill(255);
  text("Mirar por la ventana", escX(200), escY(500));
  text("Seguir caminando", escX(600), escY(500));
}
