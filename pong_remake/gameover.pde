void gameover() {
  background(8, 34, 157);
  if (lscore == 3) {
    textSize(150);
    if(sound == 1){
      win.play();}
      else {
      win.pause();}
        fill(255,197,3);
    text("Left", 80, 200);
    text( "Player",80,500);
    text("Wins!",80,750);
  } else if (rscore == 3) {
    textSize(150);
   if(sound == 1){
      win.play();}
      else { win.rewind();
      win.pause();}
    fill(38,230,334);
    text("Right", 70, 200);
    text( "Player",80,500);
    text("Wins!",80,750);
    
  }
}

void gameoverClicks() {
    mode = intro;
    reset();
  }
