public class Carcasa extends Pieza{
  private float w;
  private float h;
  private int _color;

  // Carcasa c = new Carcasa(argumentos)
  Carcasa(float w, float h, int _color, float x, float y) { 
    super(x, y);
    this.w = w;
    this.h = h;
    this._color = _color;
    this.x = x;
    this.y = y;
  }
  
  public void dibujar(){
    rectMode(CORNER);
    fill(_color);
    rect(x, y, w, h);
    rect(x+w, y+h/2.0, h/2.0, h/2.0);
  }
  
}
