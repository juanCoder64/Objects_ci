Camion c;
Estrella strella= new Estrella();
ObjetosdColores sqr;
ObjetosdColores elli;
PImage cursed_Image;
PImage cursed_Gif;
color kkk = 255;
color kkkk = 255;
int bool1 =1;
int bool2 =1;
int x,y,w,h,x2,y2,w2,h2,x3,y3;

void mouseClicked(){
  sqr.mC();
  elli.mC();
  c.mC();
}

void cambiarColorE()
{
  if(sqrt(pow((mouseY-100),2)+pow((mouseX-1100),2))>75){
      if(bool1==1)
      {
        kkk=color(random(float(100)),random(float(100)),random(float(100)));
        bool1=0;
      }
  }
  else
  {
    bool1=1;
  }
}


void cambiarColorR()
{
  if(mouseX>225&&mouseX<375){
    if(mouseY>455&&mouseY<605){
      if(bool2==1)
      {
        kkkk=color(random(float(100)),random(float(100)),random(float(100)));
        bool2=0;
      }
    }
  }
  else
  {
    bool2=1;
  }
}


void setup(){
  size(1370,800);
   x3=200;
   y3=100;
   cursed_Image = loadImage("processing.jpg");
   cursed_Gif = loadImage("bears.gif");
   c = new Camion(width/2-100, height/20, x3 , y3, color(255, 255, 0), 10);
   x=200;
   y=550;
   w=150;
   h=150;
   x2=1100;
   y2=100;
   w2=150;
   h2=150;
   sqr=new ObjetosdColores(x,y,w,h,0);
   elli=new ObjetosdColores(x2,y2,w2,h2,1);
   
}

  
void draw(){
 
    background(255);
    c.dibujar();
    cambiarColorE();
    cambiarColorR();
    strella.dibujar();
    image(cursed_Image, 850, 450, width*.2, height*.2);
    image(cursed_Gif, 50, height/2-140, width*.2, height*.2);
    fill(kkkk);
    sqr.dibujar();
    fill(kkk);
    elli.dibujar();

}
void keyPressed(){
  if(keyCode == 39){//derecha
  c.rotar(1);
  c.avanzar();
  }
  if(keyCode == 38){//arriba
  c.rotar(2);
  c.avanzar();
  }
  if(keyCode == 37){//izquierda
  c.rotar(3);
  c.avanzar();
  }
  if(keyCode == 40){//abajo
  c.rotar(4);
  c.avanzar();
  }
}                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
