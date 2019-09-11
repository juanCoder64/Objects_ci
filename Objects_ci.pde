Camion c;
Estrella strella= new Estrella();  
void setup(){
  size(640, 360);
  c = new Camion(width/2, height/2, 100 , 50, color(255, 255, 0), 10);
}
void mouseClicked(){
  strella = new Estrella();
  }
void draw(){
 
    background(255);
    c.dibujar();
      strella.dibujar();
    delay(1);
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
