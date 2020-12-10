class Aventura {
  int numimg = 11;
  int estado;
  Pantallas pantallas;
  Juego juego;
  Comida comida;
  Mano mano;
  Presentacion presentacion;

  Aventura() {
    pantallas = new Pantallas();
    juego = new Juego();
    comida = new Comida();
    mano = new Mano();
    presentacion = new Presentacion();
    estado=1;
  }

  void fluir() {
    if (estado == 1) {
      pantallas.pantalla1();
    }
    if (estado== 2) {
      pantallas.pantalla2();
    }
    if (estado== 3) {
      pantallas.pantalla3();
    }
    if (estado== 5) {
      pantallas.pantalla5();
    }
    if (estado==4) {
      pantallas.pantalla4();
    }
    if (estado== 6) {
      pantallas.pantalla6();
    }
    if (estado==7) {
      pantallas.pantalla7();
    }
    if (estado==8) {
      pantallas.pantalla8();
    }
    if (estado==9) {
      pantallas.pantalla9();
    }
    if (estado==10) {
      pantallas.pantalla10();
    }
    if (estado==11) {
      pantallas.pantalla11();
    }
    if (estado==12) {
      presentacion.dibujar();
    }
    if (estado==13) {
      juego.jugar();
    }
  }

  void seguir(int tecla) {
    if (estado==1) { //presentación 
      if (tecla==ENTER) {
        estado = 2; //se encontró con una casa
      }
    }
    if (estado==7) { //créditos
      if (tecla==ENTER) {
        estado=1; //presentación
      }
    }
    if (estado == 12 && tecla == ENTER) {
      estado = 13;
    }
    if (estado == 13 && key == 'c' ) {
      estado = 10;
    }
  }
  void elecciones() {
    if (estado==2) { //caminando por el bosque
      if (mouseX>=escX(50) && mouseX<=escX(350) && mouseY>=escY(450) && mouseY<=escY(500)) {
        estado= 3; //la casa es muy agradable
      }
      if (estado==2) { //caminando por el bosque
        if (mouseX>=escX(450) && mouseX<=escX(700) && mouseY>= escY(450) && mouseY <= escY(500)) {
          estado= 5; //bosque ricitos se encuentra con los osos
        }
      }
    }
    if (estado==3) { //la casa es muy agradable
      if (mouseX>= escX(450) && mouseX<= escX(700) && mouseY>= escY(50) && mouseY<= escY(100)) {
        estado= 4; //hay platos deliciosos y sillas comodas
      }
    }
    if (estado==3) { //la casa es muy agradable
      if (mouseX>= escX(50) && mouseX<= escX(400) && mouseY>= escY(50) && mouseY<= escY(100)) {
        estado= 6; //por ser respetuoso
      }
    }
    if (estado==6) { //por ser respetuoso
      if (mouseX>=escX(200) && mouseX<= escX(400) && mouseY>= escY(500) && mouseY<= escY(600)) {
        estado= 7; //créditos
      }
    }
    if (estado==4) { //hay platos deliciosos y sillas comodas
      if (mouseX>=escX(50) && mouseX<= escX(350) && mouseY>=escY(200) && mouseY<=escY(400)) {
        estado=9; //hay camas muy cómodas
      }
    }
    if (estado==4) { //hay platos deliciosos y sillas comodas
      if (mouseX>=escX(400) && mouseX<= escX(700) && mouseY>= escY(200) && mouseY<= escY(400)) {
        estado=12; //presentación juego
      }
    }
    if (estado==8) { //llegaste a tu casa
      if (mouseX>=escX(350) && mouseX<= escX(600) && mouseY>= escY(400) && mouseY<= escY(500)) {
        estado=7; //créditos
      }
    }
    if (estado==5) { //bosque ricitos se encuentra con los osos
      if (mouseX>=escX(50) && mouseX <= escX(350) && mouseY >= escY(200) && mouseY<= escY(350)) {
        estado=6; //por ser respetuoso
      }
    }
    if (estado==5) { //bosque ricitos se encuentra con los osos
      if (mouseX>=escX(400) && mouseX<= escX(600) && mouseY>= escY(200) && mouseY<= escY(350)) {
        estado=8; //llegaste a tu casa
      }
    }
    if (estado==9) { //camas comodas
      if (mouseX>=escX(50) && mouseX<= escX(350) && mouseY >= escY(200) && mouseY<= escY(250)) {
        estado=8; //llegaste
      }
      if (mouseX>= escX(400) && mouseX <= escX(600) && mouseY >= escY(200) && mouseY <= escY(250)) {
        estado=11; //te asustaste
      }
    }
    if (estado==10) {
      if (mouseX>= escX(50) && mouseX<= escX(350) && mouseY >= escY(400) && mouseY <= escY(450)) {
        estado=11;
      }
      if (mouseX>= escX(400) && mouseX <= escX(600) && mouseY >= escY(400) && mouseY <= escY(450)) {
        estado=8;
      }
    }
    if (estado==11) {
      if (mouseX>= escX(50) && mouseX<= escX(350) && mouseY>= escY(50) && mouseY<= escY(150)) {
        estado=6;
      }
      if (mouseX>=escX(400) && mouseX<=escX(600) && mouseY>= escY(50) && mouseY<= escY(150)) {
        estado=8;
      }
    }
  }
  float escX(float valor_) { //resizable
    return map( valor_, 0, 800, 0, width);
  }
  float escY(float valor_) {
    return map( valor_, 0, 600, 0, height);
  }
}
