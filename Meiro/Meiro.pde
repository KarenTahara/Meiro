Ball b;
Stage s;
Obstacle o, o2;
Maze m;

PImage img;
PImage img2;
PImage img3;


int stage = 0;
int[][] A={{}};

int timeCounter = 0; //draw()が呼ばれた回数を記憶するための変数
int limitTime = 100; //制限時間

int StartOverCount = 0;

void setup() { 
  size(800, 800); 
  b = new Ball();
  s = new Stage();
  o = new Obstacle(200, 680,4,5);
  o2 = new Obstacle(200, 400,-1,6);
  m = new Maze();
  frameRate(30);
}
void draw() { 

  if (stage == 0) {//ゲームのスタート画面
    background(200, 100, 100);
    text("gamestart", width/2, height/2);
    StartOverCount=0;
  }
  //print(StartOverCount);

  if (stage==1) {
    background(255);

    b.starts();
    //PImage img1 = loadImage("yuka.png");
    //image(img1, 0, 0);
    m.maze1();//迷路描画
    o.display();
    o.move();
    o2.display();
    o2.move();
    o.gokidead(b.x, b.y);//ゴキ判定
    b.display();//ボール描画
    b.wallDead1();
    s.limtetime();
    s.clearStage1(b.x, b.y);
    if (StartOverCount==0) {
      b.x=100;
      b.y=100;
    } else {
      b.move();//ボールが動く
    }
  } 

  if (stage==2) {
    b.starts();
    background(128);

    if (StartOverCount==0) {
      b.x=100;
      b.y=100;
    }

    m.maze2();//迷路描画
    b.display();//ボール描画
    b.move();//ボールが動く
    o.display();
    o.move();
    o.gokidead(b.x, b.y);//ゴキ判定

    s.limtetime();//!
    s.clearStage2(b.x, b.y);
  }

  if (stage==3) {
    print(StartOverCount);
    if(limitTime % 2 == 0){
      background(0);
    }else{
      background(255);
    }
    b.starts();
    if (StartOverCount==0) {
      b.x=100;
      b.y=100;
    }else{
      b.move();//ボールが動く
    }
    m.maze2();//迷路描画
    b.display();//ボール描画
    o.display();
    o.move();
    o.gokidead(b.x, b.y);//ゴキ判定

    s.limtetime();//!
    s.clearStage3(b.x, b.y);//!
  }

  if (stage==4) {
    //crearになる
    background(0);
    fill(100);
    text("crear!", width/2, height/2);
  }
  if (stage==5) {
    //gameoverになる
    limitTime= 5;
    background(0);
    fill(255);
    text("gameover..", width/2, height/2);
  }
}

void mouseClicked() {
  if (stage==0) {
    stage++;
  }
  if (stage == 5) {
    stage = 0;
  }
}
