public class Ventana extends Pieza{
  private float lado;
  private int _color;
  
  Ventana(float lado, int _color, float x, float y) {
    super(x, y);
    this.lado = lado;
    this._color = _color;
  }
  
  public void dibujar(){
    rectMode(CENTER);
    fill(_color);
    rect(x, y, lado, lado);
  }
 
}
