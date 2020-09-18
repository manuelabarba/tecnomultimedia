void keyPressed() {
  if (estado.equals("imagen0")) {
    if (keyCode == ENTER) {
      estado = "imagen1";
    }
  }
  if (estado.equals("imagen6")) {
    if (keyCode==ENTER) {
      estado= "imagen0";
    }
  }
  if (estado.equals("imagen8")) {
    if (keyCode==ENTER) {
      estado="imagen7";
    }
  }
  if (estado.equals("imagen8")) {
    if (keyCode==UP) {
      estado="imagen10";
    }
  }
  if (estado.equals("imagen9")) {
    if (keyCode==ENTER) {
      estado="imagen7";
    }
  }
  if (estado.equals("imagen9")) {
    if (keyCode==UP) {
      estado="imagen10";
    }
  }
  if (estado.equals("imagen10")) {
    if (keyCode==ENTER) {
      estado="imagen7";
    }
    if (keyCode==DOWN) {
      estado="imagen5";
    }
  }
}
