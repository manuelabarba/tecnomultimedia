import ddf.minim.*;
Minim minim;
AudioPlayer music;
Aventura aventura;

void setup() {
  size(800, 600);
  aventura = new Aventura();
  minim = new Minim (this);
  music = minim.loadFile("About_That_Oldie.mp3");
  music.play();
}

void draw() {
  aventura.fluir();
}

void keyPressed() {
  aventura.seguir(keyCode);
}

void mousePressed() {
  aventura.elecciones();
}
