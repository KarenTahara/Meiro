class Obstacle {
    int x=200, y=680,size = 20;
  int stepX=4, stepY=18;
  int w = 50;
  PImage img = loadImage("gokiburi.png");
  
  void display(){
    image(img,x-60,y-70,100,100);
    ellipse(x, y, size, size);
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
  
  int Xza(){
    return x;
  }
  
  int Yza(){
    return y;
  }

}
