class Obstacle {
  int x, y,size = 30;
  int stepX, stepY;
  int w = 50;
  PImage img = loadImage("gokiburi.png");
  Obstacle(int x0,int y0, int stepX0, int stepY0){
    x = x0;
    y = y0;
    stepX = stepX0;    
    stepY = stepY0;  
  }
  void display(){
    image(img,x-60,y-70,100,100);
    //ellipse(x, y, size, size);
  }
    
  void move(){
    x +=stepX;
    y +=stepY;
    if(x < 0 || x > width-size/2){
      stepX = -stepX;
      return;
    }
    if(y < 0 || y > height-size/2){
      stepY = -stepY;
      return;
    }
  }
  void gokidead(int dx,int dy){
    if((dx > x-size && dx < x+size ) && (dy > y-size && dy < y+size)){
      stage= 0;
    }
  }


}
