class Pantallas {
  int numimg = 11;
  PImage[] images = new PImage[numimg]; //imagenes pantallas aventura
  String [] textos = {"Créditos", "Trabajo Práctico Final", "Aventura Gráfica: Ricitos de Oro y los Tres Osos", "Manuela Barba", "Facultad de Artes", "Tecnología Multimedial 1", "Comisión 1", 
    "Noviembre 2020", "Aprieta enter para volver al inicio"}; //creditos
  Pantallas() {
    for (int i=0; i<images.length; i++) {
      images[i]=loadImage("imagen"+i+".jpg");
    }
    surface.setResizable(true);
  }
  float escX(float valor_) {
    return map( valor_, 0, 800, 0, width);
  }
  float escY(float valor_) {
    return map( valor_, 0, 600, 0, height);
  }
  void pantalla1() {
    image(images[0], 0, 0, escX(800), escY(600));
    textSize(escX(30));
    fill(255);
    textAlign(LEFT);
    text("Ricitos de Oro y los Tres Osos", escX(200), escY(300)); 
    text("Presiona enter para comenzar", escX(200), escY(500));
  }
  void pantalla2() {
    image(images[1], 0, 0, escX(800), escY(600));
    textSize(escX(30));
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
  void pantalla3() {
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
  void pantalla4() {
    image(images[3], 0, 0, escX(800), escY(600));
    fill(0);
    text("En la mesa hay platos deliciosos, y sillas muy cómodas", escX(50), escY(150), escX(350), escY(100));
    rect(escX(50), escY(300), escX(300), escY(50));
    rect(escX(400), escY(300), escX(300), escY(50));
    fill(255);
    text("Dejarlos así y seguir inspeccionando", escX(50), escY(300), escX(300), escY(200));
    text("Sentarse en una de las sillas y comer", escX(400), escY(300), escX(300), escY(200));
  }
  void pantalla5() {
    image(images[4], 0, 0, escX(800), escY(600));
    text("En el bosque, Ricitos se encuentra con los osos", escX(150), escY(100), escX(500), escY(500));
    rect(escX(400), escY(200), escX(300), escY(50));
    rect(escX(50), escY(200), escX(300), escY(50));
    fill(255);
    text("Pedirles ayuda", escX(50), escY(200), escX(300), escY(500));
    text("Seguir caminando", escX(400), escY(200), escX(300), escY(500));
    fill(0);
  }
  void pantalla6() {
    image(images[5], 0, 0, escX(800), escY(600));
    fill(0);
    text("Por ser respetuosx, los osos te invitan a quedarte y pasás un buen rato con ellos, felicitaciones por tus decisiones", escX(50), escY(150), escX(300), escY(500));
    rect(escX(200), escY(500), escX(300), escY(50));
    fill(255);
    text("volver al inicio", escX(200), escY(500), escX(300), escY(500));
  }
  void pantalla7() {
    image(images[6], 0, 0, escX(800), escY(600));
    fill(255);
    textSize(20);
    text(textos[0], escX(400), escY(200));
    text(textos[1], escX(400), escY(250));
    text(textos[2], escX(400), escY(300));
    text(textos[3], escX(400), escY(350));
    text(textos[4], escX(400), escY(400));
    text(textos[5], escX(400), escY(450));
    text(textos[6], escX(400), escY(500));
    text(textos[7], escX(400), escY(550));
    fill(0, 255, 0);
    text(textos[8], escX(400), escY(100));
  }
  void pantalla8() {
    image(images[7], 0, 0, escX(800), escY(600));
    fill(255);
    text("Llegaste a tu casa", escX(500), escY(200));
    rect(escX(350), escY(400), escX(300), escY(100));
    fill(0);
    text("Volver al inicio", escX(500), escY(450));
  }
  void pantalla9() {
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
  void pantalla10() {
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
  void pantalla11() {
    image(images[10], 0, 0, escX(800), escY(600));
    fill(255);
    text("Llegaron los osos, te vieron durmiendo y te asustaste", escX(400), escY(250), escX(300), escY(100));
    fill(255);
    text("Quedarte y explicar", escX(50), escY(50), escX(300), escY(100));
    fill(0);
    text("Flecha para abajo", escX(50), escY(100), escX(300), escY(100));
    fill(255);
    text("Salir corriendo", escX(400), escY(50), escX(300), escY(100));
    fill(0);
    text("ENTER", escX(400), escY(100), escX(300), escY(100));
  }
}
