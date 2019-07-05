class Maze{
  int w;
  void maze1(){
    w=50;
    //壁描画
    noStroke();

    fill(139,69,19);
    int[][] data1={{200,0,w,700},{400,height-650,w,650},
       {600,height-650,w,550},{400,height-650,200,w}};
    A=data1;
    
    for(int i=0;i<A.length;i++){
       rect(A[i][0],A[i][1],A[i][2],A[i][3]);
    } 
    stroke(0);
    //Start!    
    fill(200,100,100);
    rect(0,0,200,100);
    fill(255);
    textSize(50);
    text("Start!",40, 70);
    //Goal!    
    fill(200,100,100);
    rect(400+w,height-650+w,200-w,100);
    fill(255);
    textSize(50);
    text("Goal!",400+w+10,height-650+w+70);
    
  }
  void maze2(){
   w=35;
   noStroke();
   fill(139,69,19);
  rect(200, 0, w, 150);
  rect(200, 150, 200, w);
  rect(0, 270, width-w-20, w);
  rect(width/2+w*3,w*1.5, w, 270-w*1.5);
  rect(width/2-w*2+5,w*1.5,170,20);
  rect(width-150,0,w,200);
  
  rect(w+20,400,height-w,w);
  rect(w+20,400+w,w,270);
  rect(w+150,500+w,w,400);
  rect(w+185,500+w,200,w);
  rect(width/2+w*3,400+w,w,205);
  rect(305,400+220,200,20);
  rect(305,400+220+20,w,w*2);
  rect(305,400+220+w*2.5,400,20);
  rect(305+400-w,400+w*3+2,w,200);

   stroke(0);
  //Start!    
  fill(200, 100, 100);
  rect(0, 0, 200, 100);
  fill(255);
  textSize(50);
  text("Start!", 40, 70);
  
   //Goal!    
   fill(200,100,100);
   rect(305+w,400+220+20,100,w*2-2);
   fill(255);
   textSize(30);
   text("Goal!",305+40,400+220+w+30);
    
  }
  
}
