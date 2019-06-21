class Ball{

}

class Maze{

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
    m.maze1();//迷路描画
    b.display();//ボール描画
    b.move();//ボールが動く
    s.clearStage1(mouseX,mouseY);
       
  } if(stage==2){
    background(128);
    m.maze2();//迷路描画
    b.display();//ボール描画
    b.move();//ボールが動く
    s.clearStage2(mouseX,mouseY);
  }if(stage==3){
    background(255);
    m.maze2();//迷路描画
    b.display();//ボール描画
    b.move();//ボールが動く
  }
  
  
}

void mouseClicked(){
  if(stage==0){
    stage++;
  }
}
