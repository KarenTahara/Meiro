Ball b;
Stage s;
Obstacle o, o2, o3, o4;
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
  o = new Obstacle(200, 680, 4, 5);
  o2 = new Obstacle(500, 400, -1, 6);
  o3 = new Obstacle(600, 600, 4, -10);
  o4 = new Obstacle(400, 400, -20, -17);
  m = new Maze();
  frameRate(30);
}
void draw() { 

  //スタート画面
  if (stage == 0) {//ゲームのスタート画面
    background(200, 100, 100);
    text("gamestart", width/2, height/2);
    StartOverCount=0;
  }
  //print(StartOverCount);


  //ステージ１
  if (stage==1) {
    background(255);

    b.starts();
    //PImage img1 = loadImage("yuka.png");
    //image(img1, 0, 0);

    m.maze1();//迷路描画

    o.display();//ゴキ1描画
    o.move();//ゴキ1動く
    o2.display();//ゴキ2描画
    o2.move();//ゴキ2動く
    b.display();//ボール描画

    s.limtetime();//時間制限
    s.clearStage1(b.x, b.y);//ゴール判定

    if (StartOverCount==0) {
      b.x=100;
      b.y=100;
    } else {
      b.move();//ボールが動く
      b.wallDead1();//壁アウト判定
      o.gokidead(b.x, b.y);//ゴキ1判定
      o2.gokidead(b.x, b.y);//ゴキ2判定
    }
  } 

  //ステージ２
  if (stage==2) {
    b.starts();
    background(128);

    if (StartOverCount==0) {
      b.x=100;
      b.y=100;
    } else {
      b.move(); //ボール動く
      b.wallDead2(); //壁アウト判定
      o.gokidead(b.x, b.y);//ゴキ判定
      o2.gokidead(b.x, b.y);//ゴキ判定
      o3.gokidead(b.x, b.y);//ゴキ判定
     

    }

    m.maze2();//迷路描画
    b.display();//ボール描画

    o.display(); //ゴキ描画
    o.move(); //ゴキ動く
    o2.display(); //ゴキ描画
    o2.move(); //ゴキ動く
    o3.display(); //ゴキ描画
    o3.move(); //ゴキ動く
    s.limtetime(); //時間制限
    s.clearStage2(b.x, b.y); //クリア判定
  }

  //ステージ３
  if (stage==3) {
    //print(StartOverCount);
    if (limitTime % 2 == 0) {
      background(255);
    } else {
      background(139,69,19);
    }
    b.starts();

    if (StartOverCount==0) {
      b.x=100;
      b.y=100;
    } else {
      b.move(); //ボールが動く
      o.gokidead(b.x, b.y); //ゴキ判定
      o2.gokidead(b.x, b.y); //ゴキ判定
      o3.gokidead(b.x, b.y); //ゴキ判定
      o4.gokidead(b.x, b.y); //ゴキ判定
      b.wallDead2(); //壁アウト判定
    }
    m.maze2();//迷路描画
    b.display();//ボール描画
    o.display(); //ゴキ描画
    o.move(); //ゴキ動く
    o2.display(); //ゴキ描画
    o2.move(); //ゴキ動く
    o3.display(); //ゴキ描画
    o3.move(); //ゴキ動く
    o4.display(); //ゴキ描画
    o4.move(); //ゴキ動く
    s.limtetime();//時間制限
    s.clearStage3(b.x, b.y);//クリア判定
  }

  //クリア画面
  if (stage==4) {
    //crearになる
    background(0);
    fill(100);    
    PImage clear=loadImage("clear.png");
    image(clear,0,0,800,800);
  }

  //ゲームオーバー画面
  if (stage==5) {
    //gameoverになる
    limitTime= 5;
    background(0);
    PImage gameover=loadImage("gameover.jpg");
    image(gameover,0,0,800,800);
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
