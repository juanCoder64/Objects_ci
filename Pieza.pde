class Pieza{
  protected float x;
  protected float y;
  
  Pieza(float x, float y) { 
    this.x = x;
    this.y = y;
  }
  
  public void dibujar(){
    rectMode(CENTER);
    fill(200);
    rect(x, y, 1, 1);
  }
  
  public void moverX(float x){
    this.x += x;
  }
  
  public void moverY(float y){
    this.y += y;
  }
}
