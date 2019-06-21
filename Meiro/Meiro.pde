class Ball {
  int x, y, size = 10;

  void move() {
    x = mouseX;
    y = mouseY;
  }

  void display() {
    fill(255);
    ellipse(x, y, size, size);
  }
}


class Maze {
  int w;
  void maze1() {
    w=50;
    //壁描画
    fill(0, 100, 240);
    rect(200, 0, w, 700);
    rect(400, height-650, w, 650);
    rect(600, height-650, w, 550);
    rect(400, height-650, 200, w);

    //Start!    
    fill(200, 100, 100);
    rect(0, 0, 200, 100);
    fill(255);
    textSize(50);
    text("Start!", 40, 70);
    //Goal!    
    fill(200, 100, 100);
    rect(400+w, height-650+w, 200-w, 100);
    fill(255);
    textSize(50);
    text("Goal!", 400+w+10, height-650+w+70);
  }
  void maze2() {
    w=35;
    fill(0, 100, 240);
    rect(200, 0, w, 150);
    rect(200, 150, 200, w);
    rect(0, 270, width-w-20, w);
    rect(width/2+w*3, w*1.5, w, 270-w*1.5);
    rect(width/2-w*2+5, w*1.5, 170, 20);
    rect(width-150, 0, w, 200);

    rect(w+20, 400, height-w, w);
    rect(w+20, 400+w, w, 270);
    rect(w+150, 500+w, w, 400);
    rect(w+185, 500+w, 200, w);
    rect(width/2+w*3, 400+w, w, 205);
    rect(305, 400+220, 200, 20);
    rect(305, 400+220+20, w, w*2);
    rect(305, 400+220+w*2.5, 400, 20);
    rect(305+400-w, 400+w*3+2, w, 200);

    //Start!    
    fill(200, 100, 100);
    rect(0, 0, 200, 100);
    fill(255);
    textSize(50);
    text("Start!", 40, 70);

    //Goal!    
    fill(200, 100, 100);
    rect(305+w, 400+220+20, 100, w*2-2);
    fill(255);
    textSize(30);
    text("Goal!", 305+40, 400+220+w+30);
  }
}


class Stage {
  void clearStage1(int dx, int dy) {
    if ((dx>400+50 && dx<600) &&(dy>height-650+50 && dy<height-650+150)) {
      stage++;
    }
  }
  void clearStage2(int dx, int dy) {
    if ((dx>305+40 && dx<305+40+100) &&(dy>640 && dy<640+35*2-2)) {
      stage++;
    }
  }
}


class Obstacle {
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

  if (stage == 0) {//ゲームのスタート画面
    background(200, 100, 100);
    text("gamestart", width/2, height/2);
  }

  if (stage==1) {
    background(128);
    m.maze1();//迷路描画
    b.display();//ボール描画
    b.move();//ボールが動く
    s.clearStage1(mouseX, mouseY);
  } 
  if (stage==2) {
    background(128);
    m.maze2();//迷路描画
    b.display();//ボール描画
    b.move();//ボールが動く
    s.clearStage2(mouseX, mouseY);
  }
  if (stage==3) {
    background(255);
    m.maze2();//迷路描画
    b.display();//ボール描画
    b.move();//ボールが動く
  }
}

void mouseClicked() {
  if (stage==0) {
    stage++;
  }
}
