PImage foto; //castillo
PImage fotodos; //harry 
PImage fotoron; //ron
PImage hermione; //hermione
int pos, telon, transp, baja;
float px,py,emma,rupert,daniel,ron, hermionegranger;
PFont texto;

void setup (){
  size(600,600);
 foto = loadImage ("harrypotter.jpg");
 fotodos = loadImage ("Potter.png");
 fotoron= loadImage ("ronweasleyescoba.png");
 hermione= loadImage("hermione2.png");
px=0;
pos=0;
telon=-100;
transp=0;
baja= -200;
py= -600;
emma= -1800;
daniel=-1400;
rupert=-1000;
ron= -1600;
hermionegranger= 2000;
texto= loadFont("BlackadderITC-Regular-48.vlw");
}

void draw(){
 background(foto);
 image(foto,0,0,width,height);
  px= map(pos,0,200,0,500);
  pos++;
telon++;
image(fotodos, px,50);
tint(255,255,255,transp);
transp++;
fill(0);
rect(0,0,width,telon);
textFont(texto,60);
fill(255);
text("Dirigido por David Yates",width/35,baja);
baja++;
text("Música por Nicolas Hooper",width/60,py);
py++;
text("Daniel Radcliffe",width/6,daniel);
daniel++;
text("Emma Watson",width/6,emma);
emma++;
text("Rupert Grint",width/6,rupert);
rupert++;
image(fotoron,ron,50);
ron++;
image(hermione,hermionegranger,50);
hermionegranger--;
}
