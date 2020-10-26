void gameover() {
  background(14, 11, 113);
  //left player win screen
  if (lscore == 3) {
    textSize(150);
    if(sound == 1){
      win.play();}
      else {
      win.pause();}
        fill(255,197,3);
    text("LEFT", 80, 200);
    text( "PLAYER",80,500);
    text("WINS!",80,750);
    //right player win screen
  } else if (rscore == 3) {
    textSize(150);
   if(sound == 1){
      win.play();}
      else { win.rewind();
      win.pause();}
    fill(38,230,334);
    text("RIGHT", 70, 200);
    text( "PLAYER",80,500);
    text("WINS!",80,750);
    
  }
}

void gameoverClicks() {
    mode = intro;
    reset();
  }
