PImage presentacion, pantalla2, casaagradable, bosqueosos, sinpermiso, teinvitan, creditos, llegaste, camascomodas, sueno,asustan;
String estado;
void setup() {
  size(800, 600);
  presentacion= loadImage("presentacion.jpg");
  pantalla2= loadImage("pantalla2.jpg");
  casaagradable= loadImage("pantalla3a.jpg");
  bosqueosos= loadImage("pantalla3b.jpg");
  sinpermiso= loadImage("pantalla3ab.jpg");
  teinvitan= loadImage("teinvitan.jpg");
  creditos= loadImage("creditos.png");
  llegaste= loadImage("llegaste.jpg");
  camascomodas= loadImage("camascomodas.jpg");
  sueno= loadImage("sueño.jpg");
  asustan=loadImage("asustan.jpg");
  estado = "presentacion";
}
void draw() {
  if (estado == "presentacion") {
    image(presentacion, 0, 0);
    textSize(30);
    text("Ricitos de Oro y los Tres Osos", 200, 300);
    fill(0);
    text("Presiona enter para comenzar", 200, 500);
  }
  if (estado== "pantalla2") {
    image(pantalla2, 0, 0);
    textSize(30);
    textAlign(CENTER);
    text("Ricitos de Oro estaba caminando por el bosque cuando se encontró con una casa", 150, 200, 500, 500);
    fill(0);
    rect(50,450,300,50);
    rect(450,450,300,50);
    fill(255);
    text("Mirar por la ventana", 200, 500);
    text("Seguir caminando", 600, 500);
  }
  if (estado== "casaagradable"){
    image(casaagradable,0,0);
     text("La casa es muy agradable y parece estar deshabitada",150,350,500,500);
     fill(0);
     rect(50,50,350,100);
     rect(450,50,300,100);
     fill(255);
     textSize(20);
     text("Esperar a los dueños y pedirles ayuda",50,80,350,500);
     text("Entrar sin permiso",350,80,500,500);
  }
  if (estado== "bosqueosos"){
    image(bosqueosos,0,0);
    text("En el bosque, Ricitos se encuentra con los osos", 150,100,500,500);
     rect(400,200,300,50);
    rect(50,200,300,50);
    
    fill(255);
    text("Pedirles ayuda",50,200,300,500);
    text("Seguir caminando",400,200,300,500);
    fill(0);
   
  }
  if(estado=="sinpermiso"){
    image(sinpermiso,0,0);
    fill(0);
    text("En la mesa hay platos deliciosos, y sillas muy cómodas",50,150,350,100);
    rect(50,300,300,50);
    rect(400,300,300,50);
    fill(255);
    text("Dejarlos así y seguir inspeccionando",50,300,300,200);
    text("Sentarse en una de las sillas y comer",400,300,300,200);
  }
  if(estado== "teinvitan"){
    image(teinvitan,0,0);
    fill(0);
    text("Por ser respetuosx, los osos te invitan a quedarte y pasás un buen rato con ellos, felicitaciones por tus decisiones",50,150,300,500);
     rect(200,500,300,50);
     fill(255);
     text("volver al inicio",200,500,300,500);
  }
  if(estado=="creditos"){
    image(creditos,0,0);
    fill(255);
    text("Créditos",400,200);
    text("Trabajo Práctico N3",400,250);
    text("Aventura Gráfica: Ricitos de Oro y los Tres Osos",400,300);
    text("Manuela Barba",400,350);
    text("Facultad de Artes",400,400);
    text("Tecnología Multimedial 1",400,450);
    text("Comisión 1",400,500);
    text("Julio 2020",400,550);
    fill(0,255,0);
    text("Aprieta enter para volver al inicio",400,100);
  }
  if(estado=="llegaste"){
    image(llegaste,0,0);
    fill(255);
    text("Llegaste a tu casa",500,200);
    rect(350,400,300,100);
    fill(0);
    text("Volver al inicio",500,450);
  }
  if(estado=="camascomodas"){
    image(camascomodas,0,0);
    fill(0);
    text("En la habitación hay camas muy cómodas",400,200);
    fill(255);
    rect(50,250,300,50);
    rect(400,250,300,50);
    fill(0);
    text("Terminar la aventura e irme a casa",50,250,300,100);
    text("ENTER",50,300,300,100);
    text("Tengo sueño, así que duermo en una de las camas",400,250,300,100);
    text("FLECHA PARA ARRIBA", 400,300,300,100);
  }
  if(estado=="sueno"){
    image(sueno,0,0);
    fill(0);
    text("Luego de comer, a Ricitos le agarra sueño",400,200);
    fill(255);
    rect(50,300,300,50);
    rect(400,300,300,50);
    fill(0);
    text("Dormir en una cama",50,300,300,100);
    text("Flecha para arriba",50,350,300,100);
    text("Ir a casa a dormir",400,300,300,100);
    text("ENTER",400,350,300,100);
  }
  if(estado=="asustan"){
    image(asustan,0,0);
    fill(255);
    text("Llegaron los osos, te vieron durmiendo y te asustaste", 200,300,300,100);
    fill(255);
    text("Quedarte y explicar",50,50,300,100);
    fill(0);
    text("Flecha para abajo",50,100,300,100);
    fill(255);
    text("Salir corriendo",400,50,300,100);
    fill(0);
    text("ENTER",400,100,300,100);
  }
}

void keyPressed() {
  if (estado.equals("presentacion")){
  if (keyCode == ENTER) {
    estado = "pantalla2";
  }
}
if(estado.equals("creditos")){
  if(keyCode==ENTER){
    estado= "presentacion"; 
}
}
if(estado.equals("camascomodas")){
  if(keyCode==ENTER){
    estado="llegaste";
  }
}
if(estado.equals("camascomodas")){
  if(keyCode==UP){
    estado="asustan";
  }
}
if(estado.equals("sueno")){
  if(keyCode==ENTER){
    estado="llegaste";
  }
}
if(estado.equals("sueno")){
  if(keyCode==UP){
    estado="asustan";
  }
}
if(estado.equals("asustan")){
  if(keyCode==ENTER){
    estado="llegaste";
  }
  if(keyCode==DOWN){
    estado="teinvitan";
  }
}
}


void mousePressed(){
   if (estado.equals("pantalla2")){
  if(mouseX>=50 && mouseX<=350 && mouseY>=450 && mouseY<=500){
    estado= "casaagradable";
  }
   if (estado.equals("pantalla2")){
  if(mouseX>=450 && mouseX<=700 && mouseY>= 450 && mouseY <= 500){
    estado= "bosqueosos";
}
}
   }
if(estado.equals("casaagradable")){
  if(mouseX>= 450 && mouseX<= 700 && mouseY>= 50 && mouseY<= 100){
    estado= "sinpermiso";
  }
}
if(estado.equals("casaagradable")){
  if(mouseX>= 50 && mouseX<= 400 && mouseY>= 50 && mouseY<= 100){
    estado= "teinvitan";
  }
}
  if(estado.equals("teinvitan")){
  if(mouseX>=200 && mouseX<= 400 && mouseY>= 500 && mouseY<= 600){
    estado= "creditos";
  }
}
  if(estado.equals("bosqueosos")){
    if(mouseX>=50 && mouseX<= 350 && mouseY>=200 && mouseY<=400){
      estado="teinvitan";
}
  }
  if(estado.equals("bosqueosos")){
    if(mouseX>=400 && mouseX<= 700 && mouseY>= 200 && mouseY<= 400){
      estado="llegaste";
    }
  }
  if(estado.equals("llegaste")){
    if(mouseX>=350 && mouseX<= 600 && mouseY>= 400 && mouseY<= 500){
      estado= "creditos";
    }
  }
  if(estado.equals("sinpermiso")){
    if(mouseX>=50 && mouseX <= 350 && mouseY >= 300 && mouseY<= 350){
      estado="camascomodas";
    }
  }
  if(estado.equals("sinpermiso")){
    if(mouseX>=400 && mouseX<= 600 && mouseY>= 300 && mouseY<= 350){
      estado="sueno";
    }
  }
}
