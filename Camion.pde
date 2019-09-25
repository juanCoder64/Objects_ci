class Camion extends Vehiculo {

  boolean f=false;
  int x,y;
  public Camion(int x, int y, float w, float h, int _color, float v) {
    super(v, 3);
    this.x = x;
    this.y = y;
    this.v = v;
    ventana = new Ventana[3];
    carcasa = new Carcasa(w, h, _color, x, y);
    llantaIzq = new Llanta(x+ (w/4.0), y+h, h/8.0, h/3.0);
    llantaDer = new Llanta(x+ (3.0*w/4.0), y+h, h/8.0, h/3.0);
    for (int i=0; i<3; i++) {
      ventana[i] = new Ventana(h/2.0, color(0, 255, 255), (w*(1+2*i))/6.0 + x, y + 3.0*h/8.0);
    }
  }

  public void dibujar() {
    carcasa.dibujar();
    llantaIzq.dibujar();
    llantaDer.dibujar();
    fill(0,0,255);
    rect(x,y,10,10);
    for (int i=0; i<3; i++)
      ventana[i].dibujar();
  }
 void mC()
 {
  if(f==true)
   {
     f=false;
     x=mouseX;
     y=mouseY;
   }
   else
   {
    if(mouseX>x-10&&mouseX<x+10&&mouseY>y-10&&mouseY<y+10)
    {
      f=true;
    }
  }
 }
}
