class Stage {
   void limtetime(){
     timeCounter += 1;
     if(timeCounter%60==0){ //draw()が60で割り切れる回数呼び出された時、if文の中を実行
       limitTime -= 1;
     }
     fill(#030303);
     textSize(40);
     text("limite Time", 100, 50);
     text(nf(limitTime, 2), width/2, 50);
     
     if(limitTime < 0){
       stage=5;
     }
   }
   
    void clearStage1(int dx,int dy){
    if((dx>400+50 && dx<600) &&(dy>height-650+50 && dy<height-650+150)){
    stage++; 
    StartOverCount=0;
  }
  }
  void clearStage2(int dx,int dy){
    if((dx>305+40 && dx<305+40+100) &&(dy>640 && dy<640+35*2-2)){
    stage++; 
    StartOverCount=0;
   }
  }
   void clearStage3(int dx,int dy){
    if((dx>305+40 && dx<305+40+100) &&(dy>640 && dy<640+35*2-2)){
    stage++; 
    StartOverCount=0;
   }
  }

}
