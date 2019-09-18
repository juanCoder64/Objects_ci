class Carro extends Vehiculo{
  
  public Carro(float x, float y, float w, float h, int _color, float v){
    super(v,2);
    this.x = x;
    this.y = y;
    this.v = v;
    
    ventana = new Ventana[2];
    carcasa = new Carcasa(w, h, _color, x, y);
    llantaIzq = new Llanta(x+ (w/4.0), y+h, h/8.0, h/3.0);
    llantaDer = new Llanta(x+ (3.0*w/4.0), y+h, h/8.0, h/3.0);
    
    for(int i=0; i<2; i++){
      ventana[i] = new Ventana(h/2.0, color(0, 255, 255), (w*(1+2*i))/4.0 + x, y + 3.0*h/8.0);
    }
    
  }
  
  public void dibujar(){
    carcasa.dibujar();
    llantaIzq.dibujar();
    llantaDer.dibujar();
    for(int i=0; i<2; i++)
      ventana[i].dibujar();
  }

}
