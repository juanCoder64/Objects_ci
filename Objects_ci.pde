<<<<<<< Updated upstream
Camion c;
Carro ca;
Estrella strella= new Estrella();  
PImage cursed_Image;
PImage cursed_Gif;
color kkk = 255;
color kkkk = 255;
int bool1 =1;
int bool2 =1;
void cambiarColorE()
{
  if (mouseX>1050&&mouseX<1200) {
    if (mouseY>50&&mouseY<200) {
      if (bool1==1)
      {
        kkk=color(random(float(100)), random(float(100)), random(float(100)));
        bool1=0;
      }
    }
  } else
  {
    bool1=1;
  }
}
void cambiarColorR()
{
  if (mouseX>200&&mouseX<350) {
    if (mouseY>530&&mouseY<680) {
      if (bool2==1)
      {
        kkkk=color(random(float(100)), random(float(100)), random(float(100)));
        bool2=0;
      }
    }
  } else
  {
    bool2=1;
  }
}
void setup() {
  size(1370, 800);
  cursed_Image = loadImage("processing.jpg");
  cursed_Gif = loadImage("bears.gif");
  ca = new Carro(width/2, height/20, 200, 100, color(255, 0, 0), 10);
  c = new Camion(width/2-100, height/20, 200, 100, color(255, 255, 0), 10);
}


void draw() {

  background(255);
  c.dibujar();
  ca.dibujar();
  cambiarColorE();
  cambiarColorR();
  strella.dibujar();
  image(cursed_Image, 850, 450, width*.2, height*.2);
  image(cursed_Gif, 50, height/2-140, width*.2, height*.2);
  fill(kkkk);
  ellipseMode(CORNER);
  rectMode(CORNER);
  rect(200, 530, 150, 150);
  fill(kkk);
  ellipse(1050, 50, 150, 150);
}
void keyPressed() {
  if (keyCode == 39) {//derecha
    c.rotar(1);
    c.avanzar();
  }
  if (keyCode == 38) {//arriba
    c.rotar(2);
    c.avanzar();
  }
  if (keyCode == 37) {//izquierda
    c.rotar(3);
    c.avanzar();
  }
  if (keyCode == 40) {//abajo
    c.rotar(4);
    c.avanzar();
  }
  if (key == 'd') {//derecha
    ca.rotar(1);
    ca.avanzar();
  }
  if (key == 'w') {//arriba
    ca.rotar(2);
    ca.avanzar();
  }
  if (key == 'a') {//izquierda
    ca.rotar(3);
    ca.avanzar();
  }  if (key == 's') {//abajo
    ca.rotar(4);
    ca.avanzar();
  } 
}                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
=======
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
int x,y,w,h,x2,y2,w2,h2;

void mouseClicked(){
  sqr.mC();
  elli.mC();
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
   cursed_Image = loadImage("processing.jpg");
   cursed_Gif = loadImage("bears.gif");
   c = new Camion(width/2-100, height/20, 200 , 100, color(255, 255, 0), 10);
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
>>>>>>> Stashed changes
