class Stage {
    int x=100, y=100, size = 50;
  int ugokuyo=0;
  boolean dead=false;
  PImage img = loadImage("idor.png");
  void move() {
    if (mouseX >x-size/2 && mouseX < x+size/2
      && mouseY >y-size/2 && mouseY < y+size/2) {
      ugokuyo=1;
    }
    if (ugokuyo==1) {
      x=mouseX;
      y=mouseY;
    }
  }
  void starts() {
    if (mouseX > 50 && mouseX < 150
      && mouseY > 50 && mouseY < 150) {
      StartOverCount=1;
    }
  }
  void display() {
    //fill(255);
    image(img, x-50, y-50, 100, 100);
    //ellipse(x, y, size, size);
  }
  void wallDead1() {
    if ((x>200 && x<250 && y>0 && y<700) ||
      (x>400 && x<400+50 && y>height-650 && y<height) ||
      (x>600 && x<600+50 && y>height-650 && y<height-650+550) ||
      (x>400 && x<400+200 && y>height-650 && y<height-650+50) ) {
      stage=0;
    }
  }



  void wallDead2() {
    int w=35;
    if ((x>200 && x<200+w && y>0 && y<150) ||
      (x>200 && x<200+200 && y>150 && y<150+w) ||
      (x>0 && x<width-w-20 && y>270 && y<270+w) ||       
      (x>width/2+w*3 && x<width/2+w*3+w && y>w*1.5 && y<w*1.5+270-w*1.5) ||
      (x>width/2-w*2+5 && x<width/2-w*2+5+170 && y>w*1.5 && y<w*1.5+20) ||
      (x>width-150 && x<width-150+w && y>0 && y<200) ||

      (x>w+20 && x<w+20+height-w && y>400 && y<400+w) ||
      (x>w+20 && x<w+20+w && y>400+w && y<400+w+270) ||
      (x>w+150 && x<w+150+w && y>500+w && y<500+w+400) ||       
      (x>w+185 && x<w+185+200 && y>500+w && y<500+w+w) ||
      (x>width/2+w*3 && x<width/2+w*3+w && y>400+w && y<400+w+205) ||
      (x>305 && x<305+200 && y>400+220 && y<400+220+20) ||

      (x>305 && x<305+w && y>400+220+20 && y<200+220+20+w*2) ||
      (x>305 && x<305+400 && y>400+220+w*2.5 && y<400+220+w*2.5+20) ||
      (x>305+400-w && x<305+400-w+w && y>400+w*3+2 && y<400+w*3+2+200) 

      ) {
      stage=0;
    }
  }


}
