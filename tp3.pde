PImage presentacion, pantalla2, pantalla3a, pantalla3b;
String estado;

void setup() {
  size(800, 600);
  presentacion= loadImage("presentacion.jpg");
  pantalla2= loadImage("pantalla2.jpg");
  pantalla3a= loadImage("pantalla3a.jpg");
  pantalla3b= loadImage("pantalla3b.jpg");
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
  if (estado== "pantalla3a"){
    image(pantalla3a,0,0);
     text("La casa es muy agradable y parece estar deshabitada",150,350,500,500);
     fill(0);
     rect(50,50,350,100);
     rect(450,50,300,100);
     fill(255);
     textSize(20);
     text("Esperar a los dueños y pedirles ayuda",50,80,350,500);
     text("Entrar sin permiso",350,80,500,500);
  }
  if (estado== "pantalla3b"){
    image(pantalla3b,0,0);
    text("En el bosque, Ricitos se encuentra con los osos", 150,100,500,500);
     rect(400,200,300,50);
    rect(50,200,300,50);
    
    fill(255);
    text("Pedirles ayuda",50,200,300,500);
    text("Seguir caminando",400,200,300,500);
    fill(0);
   
  }
}

void keyPressed() {
  if (keyCode == ENTER) {
    estado = "pantalla2";
  }
}
void mousePressed(){
  if(mouseX>=50 && mouseX<=350 && mouseY>=450 && mouseY<=500){
    estado= "pantalla3a";
  }
  if(mouseX>=450 && mouseX<=700 && mouseY>= 450 && mouseY <= 500){
    estado= "pantalla3b";
}
}
