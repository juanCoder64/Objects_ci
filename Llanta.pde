public class Llanta extends Pieza{
  private float d, D;
  private int colorIn= 255, colorOut = color(100, 100, 100);
  
  public Llanta(float x, float y, float d, float D, int colorIn, int colorOut){
    super(x, y);
    this.d = d;
    this.D = D;
    this.colorIn = colorIn;
    this.colorOut = colorOut;
  }
  
  public Llanta(float x, float y, float d, float D){
    super(x, y);
    this.d = d;
    this.D = D;
  }
  
  public void dibujar(){
    ellipseMode(RADIUS);
    fill(colorOut);
    ellipse(x, y, D, D);
    fill(colorIn);
    ellipse(x, y, d, d);
  }
}
