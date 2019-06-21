class Ball{
  int x , y , size = 10;
  

  void move(){
    x = mouseX;
    y = mouseY;
  }
  
  void display(){
    fill(255);
    ellipse(x, y, size, size);
  }

}

class Maze{
  int w=50;
  void maze1(){
    //壁描画
    fill(0,100,240);
    rect(200,0,w,700);
    rect(400,height-650,w,650);
    rect(600,height-650,w,550);
    rect(400,height-650,200,w);
    
    //Start!    
    fill(200,100,100);
    rect(0,0,200,100);
    fill(255);
    textSize(50);
    text("Start!",40, 70);
    //Goor!    
    fill(200,100,100);
    rect(400+w,height-650+w,200-w,100);
    fill(255);
    textSize(50);
    text("Goor!",400+w+10,height-650+w+70);
    
  }
  
}

class Stage{
}
class Obstacle{
}

Ball b;
Stage s;
Obstacle o;
Maze m;

int stage = 0;
void setup() { 
  size(800, 800); 
  b = new Ball();
  s = new Stage();
  o = new Obstacle();
  m = new Maze(); 
  
}
void draw() { 
  
  if(stage == 0){//ゲームのスタート画面
    background(200, 100, 100);
    text("gamestart",width/2, height/2);
  }
 
  if(stage==1){
    background(128);
    b.display();//ボール描画
    b.move();//ボールが動く
    m.maze1();//迷路描画
    
    
  } 
}

void mouseClicked(){
  if(stage==0){
    stage++;
  }
}
