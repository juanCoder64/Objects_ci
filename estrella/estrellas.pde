class Estrella{
  private float x, y, radius1, radius2;
  private int nPoints;
  private color inside = color(255,192,5);
 Estrella() {
    this.x = mouseX/640.00;
    this.y = mouseY/360.00;
    this.radius1= 20;
    this.radius2 = 50;
    this.nPoints = 5;
  }
  
  private void f() {
    
    float angle = TWO_PI / nPoints;
    float halfAngle = angle/2.0;
    beginShape();
    for (float a = 0; a < TWO_PI; a += angle) {
      float  sx= 0 + cos(a) * radius2;
      float sy = 0 + sin(a) * radius2;
      vertex(sx, sy);
      sx = 0 + cos(a+halfAngle) * radius1;
      sy = 0 + sin(a+halfAngle) * radius1;
      vertex(sx, sy);
       
    }
    endShape(CLOSE);
   
  }
  
  public void dibujar(){
    pushMatrix();
    translate(width*x, height*y);
    rotate(frameCount / 400.0);
    f(); 
    popMatrix();
    fill(inside);
  }
};
