void reset() {
  ballx = width/2;
  bally = height/2;
  lefty = height/2;
  righty = height/2;
  lscore = 0;
  rscore = 0;
  timer = 100;
  if (ballspeed==1) {
    if (random(100) > 50) {
      ballvx=1;
      ballvy=1;
    } else {
      ballvx = -1;
      ballvy = -1;
    }
  } else if (ballspeed==2) {
    if (random(100) > 50) {
      ballvx=3;
      ballvy=3;
    } else {
      ballvx = -3;
      ballvy = -3;
    }
  } else if  (ballspeed == 3) {
    if (random(100) > 50) {
      ballvx=10;
      ballvy=10;
    } else {
      ballvx = -10;
      ballvy = -10;
    }
  }
}
void resetgame(){ballx = width/2;
  bally = height/2;
  lefty = height/2;
  righty = height/2;
  timer = 100;
   ballx = ballx + ballvx;
    bally = bally + ballvy;
  if (ballspeed==1) {
    if (random(100) > 50) {
      ballvx=3;
      ballvy=3;
    } else {
      ballvx = -3;
      ballvy = -3;
    }
  } else if (ballspeed==2) {
    if (random(100) > 50) {
      ballvx=5;
      ballvy=5;
    } else {
      ballvx = -5;
      ballvy = -5;
    }
  } else if  (ballspeed == 3) {
    if (random(100) > 50) {
      ballvx=7;
      ballvy=7;
    } else {
      ballvx = -7;
      ballvy = -7;
    }
  }} 
void tactileRect(int x, int y, int x2, int y2, int f, int f2, int s, int s2) {
  if (mouseX > x && mouseX < x2 && mouseY > y && mouseY < y2) {
    strokeWeight(1);
    fill(f);
    stroke(s);
  } else {
    strokeWeight(7);
    fill(f2);
    stroke(s2);
  }
}
void tactileRect2(int x, int y, int x2, int y2, int f, int f2, int s, int s2, int v) {
  if (mouseX > x && mouseX < x2 && mouseY > y && mouseY < y2) {
    fill(f);
    stroke(s);
  }  else if (sound == v) {
    fill(f);
    stroke(s);
  } else {
    fill(f2);
    stroke(s2);}
  }
void tactileRect3(int x, int y, int x2, int y2, int f, int f2, int s, int s2, int o) {
  if (mouseX > x && mouseX < x2 && mouseY > y && mouseY < y2) {
    fill(f);
    stroke(s);
  } else if (ballspeed == o) {
    fill(f);
    stroke(s);
  } else {
    fill(f2);
    stroke(s2);
  }
}


void textFill(int x, int y, int x2, int y2, int f, int f2) {
  if (mouseX > x && mouseX < x2 && mouseY > y && mouseY < y2) {
    fill(f);
  } else { 
    fill(f2);
  }
}
void textFill2(int x, int y, int x2, int y2, int f, int f2, int o) {
  if (mouseX > x && mouseX < x2 && mouseY > y && mouseY < y2) {
    fill(f);
  } else if (ballspeed == o) {
    fill(f);
  } else { 
    fill(f2);
  }
}
void textFill3(int x, int y, int x2, int y2, int f, int f2, int v) {
  if (mouseX > x && mouseX < x2 && mouseY > y && mouseY < y2) {
    fill(f);
  } else if (sound == v) {
    fill(f);
  } else { 
    fill(f2);
  }
}
void rectt() {
  if (mouseX > 250 && mouseX < 350 && mouseY > 70 && mouseY < 120) {
    fill(0);
  }
}
void soundcontrol(AudioPlayer s){
  if (sound ==1){
    s.rewind();
    s.play();} 
    else {
      s.pause();}
    
}
