class Ball {
    int x=100, y=100, size = 50;
  int ugokuyo=0;
  boolean dead=false;
   PImage img = loadImage("idor.png");
  void move() {
    if(mouseX >x-size/2 && mouseX < x+size/2
      && mouseY >y-size/2 && mouseY < y+size/2){
        ugokuyo=1;
      }if(ugokuyo==1){
        x=mouseX;
        y=mouseY;
      }
      
  }
  void starts(){
        if(mouseX > 50 && mouseX < 150
         && mouseY > 50 && mouseY < 150){
          StartOverCount=1;
       }
  }
  void display() {
    //fill(255);
    image(img,x-50,y-50,100,100);
    //ellipse(x, y, size, size);
  }
  void wallDead1(){
    if((x>200 && x<250 && y>0 && y<700) ||
       (x>400 && x<400+50 && y>height-650 && y<height) ||
       (x>600 && x<600+50 && y>height-650 && y<height-650+550) ||
       (x>400 && x<400+200 && y>height-650 && y<height-650+50) ){
      stage=0;
    }
  }
}
