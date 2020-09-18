void mousePressed() {
  if (estado.equals("imagen1")) {
    if (mouseX>=height/12 && mouseX<=height/2+height/12 && mouseY>=width/2+height/12 && mouseY<=height-height/6) {
      estado= "imagen2";
    }
    if (estado.equals("imagen1")) {
      if (mouseX>=width/2+height/12 && mouseX<=width-height/6 && mouseY>= width/2+height/12 && mouseY <= height-height/6) {
        estado= "imagen4";
      }
    }
  }
  if (estado.equals("imagen2")) {
    if (mouseX>= width/2+height/12 && mouseX<= width-height/6 && mouseY>= height/12 && mouseY<= height/6) {
      estado= "imagen3";
    }
  }
  if (estado.equals("imagen2")) {
    if (mouseX>= height/12 && mouseX<= width/2 && mouseY>= height/12 && mouseY<= height/6) {
      estado= "imagen5";
    }
  }
  if (estado.equals("imagen5")) {
    if (mouseX>=height/3 && mouseX<= width/2 && mouseY>= height-height/6 && mouseY<= height) {
      estado= "imagen6";
    }
  }
  if (estado.equals("imagen3")) {
    if (mouseX>=height/12 && mouseX<= height/2+height/12 && mouseY>=height/3 && mouseY<=width/2) {
      estado="imagen8";
    }
  }
  if (estado.equals("imagen3")) {
    if (mouseX>=width/2 && mouseX<= width-height/6 && mouseY>= width/4 && mouseY<= width/2) {
      estado="imagen9";
    }
  }
  if (estado.equals("imagen7")) {
    if (mouseX>=height/2+height/12 && mouseX<= height && mouseY>= width/2 && mouseY<= height-height/6) {
      estado= "imagen6";
    }
  }
  if (estado.equals("imagen4")) {
    if (mouseX>=height/12 && mouseX <= height/2+height/12 && mouseY >= height/3 && mouseY<= height/2+height/12) {
      estado="imagen5";
    }
  }
  if (estado.equals("imagen4")) {
    if (mouseX>=width/2 && mouseX<= height && mouseY>= height/3 && mouseY<= height/2+height/12) {
      estado="imagen7";
    }
  }
  /*if(estado.equals("camas comodas")){
   if(mouseX>=50 && mouseX<= 350 && mouseY >= 300 && mouseY<= 350){
   estado="llegaste";
   }
   if(mouseX>= 400 && mouseX <= 600 && mouseY >= 300 && mouseY <= 350){
   estado="sueno";
   }
   }
   if(estado.equals("sueno")){
   if(mouseX>=400 && mouseX <= 600 && mouseY >= 300 && mouseY <= 350){
   estado="llegaste";
   }
   if(mouseX>= 50 && mouseX<= 350 && mouseY >= 300 && mouseY <= 350){
   estado="asustan";
   }
   }
   if(estado.equals("asustan")){
   if(mouseX>= 400 && mouseX <= 600 && mouseY >= 300 && mouseY<= 350){
   estado="llegaste";
   }
   if(mouseX>= 50 && mouseX<= 350 && mouseY >= 300 && mouseY<= 350){
   estado="teinvitan";
   }
   }*/
}
