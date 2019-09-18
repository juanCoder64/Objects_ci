class Vehiculo{
  protected float x;
  protected float y;
  protected int or =1;
  protected float v;
  protected int s;
  protected Carcasa carcasa;
  protected Llanta llantaIzq;
  protected Llanta llantaDer;
  protected Ventana[] ventana;
  Vehiculo(float v,int ventanas) {
    this.v = v;
    this.s = ventanas;
  }
  private void moverY(){
    carcasa.moverY(v);
    llantaIzq.moverY(v);
    llantaDer.moverY(v);
    for(int i=0; i<s; i++)
      ventana[i].moverY(v);
  }
  private void moverX(){
    carcasa.moverX(v);
    llantaIzq.moverX(v);
    llantaDer.moverX(v);
    for(int i=0; i<s; i++)
      ventana[i].moverX(v);
  }
  public void avanzar(){
    if(or == 1){//derecha
      if(v<0)
         v = -v;
       moverX();
    }
    if(or == 2){//arriba
      if(v>0)
         v = -v;
       moverY();
    }
    if(or == 3){//izquierda
      if(v>0)
         v = -v;
       moverX();
    }
    if(or == 4){//abajo
      if(v<0)
         v = -v;
       moverY();
    }
  }
  public void rotar(int or){
    this.or = or;
  }
}
