class ObjetosdColores{
  int x,y,w,h,fig;
  boolean f = false;
  
  public ObjetosdColores(int x, int y, int w, int h, int fig){
    this.x = x;
    this.y = y;
    this.h = h;
    this.w = w;
    this.fig =fig;
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
 
 void dibujar(){
    if(f==true)
    {
      x=mouseX;
      y=mouseY;
    }
    if(fig==0)
    {
      rectMode(CENTER);
      rect(x,y,w,h);
      rect(x,y,w/8,h/8);
    }
    else if(fig==1)
    {
      ellipseMode(CENTER);
      ellipse(x,y,w,h);
      rect(x,y,w/8,h/8);
      
    }
  }
}
