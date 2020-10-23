class Mano {
  PImage mano;
  int xx, yy;




  Mano() {
    mano = loadImage("hand.png");
    xx= 400;
    yy=500;
  }
  void dibujar() {
    image(mano, mouseX, yy, 100, 100);
  }
  /* void keyPressed() {
   if (keyCode==LEFT) {
   xx = xx-2;
   } else if (keyCode== RIGHT) {
   xx= xx+2;
   }
   if (keyCode== TAB) {
   xx = 400;
   }
   }
   void bordes(){
   if(xx> width){
   xx = 0;
   }
   if(xx<0){
   xx=0;
   }
   }*/
}
