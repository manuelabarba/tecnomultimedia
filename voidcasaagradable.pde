void casaagradable() {
  image(images[2], 0, 0, escX(800), escY(600));
  text("La casa es muy agradable y parece estar deshabitada", escX(150), escY(350), escX(500), escY(500));
  fill(0);
  rect(escX(50), escY(50), escX(350), escY(100));
  rect(escX(450), escY(50), escX(300), escY(100));
  fill(255);
  textSize(height/30);
  text("Esperar a los dueños y pedirles ayuda", escX(50), escY(80), escX(350), escY(500));
  text("Entrar sin permiso", escX(350), escY(80), escX(500), escY(500));
}
