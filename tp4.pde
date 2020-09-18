//PImage presentacion, pantalla2, casaagradable, bosqueosos, sinpermiso, teinvitan, creditos, llegaste, camascomodas, sueno,asustan;
String estado;
String [] textos = new String[10];
int numimg = 11;
PImage[] images= new PImage[numimg];
void setup() {
  size(800, 600);
  estado = "imagen0";
  surface.setResizable(true);
  for (int i=0; i<images.length; i++) {
    images[i]=loadImage("imagen"+i+".jpg");
  }
  textos[0] = "Créditos";
  textos[1] = "Trabajo Práctico N3";
  textos[2] = "Aventura Gráfica: Ricitos de Oro y los Tres Osos";
  textos[3] = "Manuela Barba";
  textos[4] = "Facultad de Artes";
  textos[5] = "Tecnología Multimedial 1";
  textos[6] = "Comisión 1";
  textos[7] = "Julio 2020";
  textos[8] = "Aprieta enter para volver al inicio";
}

void draw() {
  if (estado == "imagen0") {
    presentacion();
  }
  if (estado== "imagen1") {
    pantalla2();
  }
  if (estado== "imagen2") {
    casaagradable();
  }
  if (estado== "imagen4") {
    bosqueosos();
  }
  if (estado=="imagen3") {
    sinpermiso();
  }
  if (estado== "imagen5") {
    teinvitan();
  }
  if (estado=="imagen6") {
    creditos();
  }
  if (estado=="imagen7") {
    llegaste();
  }
  if (estado=="imagen8") {
    camascomodas();
  }
  if (estado=="imagen9") {
    sueno();
  }
  if (estado=="imagen10") {
    asustan();
  }
}
float escX(float valor_){
  return map( valor_ , 0, 800, 0 , width);
}
float escY(float valor_){
   return map( valor_ , 0, 600, 0 , height);
}
