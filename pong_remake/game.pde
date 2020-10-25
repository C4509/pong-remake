void game() {
  background(8, 34, 157);
  theme.rewind();
  theme.pause();
  strokeWeight(2);
  fill(227,151,103);
  line(400, 0, 400, 800);
  timer = timer - 1;
  fill(255, 197, 3);
  textSize(60);
  text(lscore, 200, 100);
  fill(38, 230, 334);
  text(rscore, 600, 100);
  fill(255);
  stroke(255);
  rect(73, 55, 65, 65);
  fill(0);
  stroke(0);
  rect(90, 65, 10, 40);
  rect(110, 65, 10, 40);
  if (lscore == 3 || rscore == 3) {
    mode=gameover;
  }
  //draw ball
  fill(200);
  strokeWeight(5);
  circle(ballx, bally, balld);
  //draw paddles
  fill(255, 197, 3);
  stroke(38,230,334);
  circle(leftx, lefty, leftd);
  fill(38, 230, 334);
  stroke(255,197,3);
  circle(rightx, righty, rightd);
  //move ball
  if (timer < 0) {
    ballx = ballx + ballvx;
    bally = bally + ballvy;
  }
  //make ball bounce off wall
  if (bally < 50 ||bally > height - 50) {
    ballvy = ballvy * -1;
  soundcontrol(wall);
  }
  //make ball bounce on intuitive angle
  if (dist(leftx, lefty, ballx, bally) < 140) {
    soundcontrol(paddle1);
    ballvx = (ballx - leftx)/35;
    ballvy = (bally - lefty)/35;
  }
  if (dist(rightx, righty, ballx, bally) < 140) {
   soundcontrol(paddle2);
    ballvx = (ballx - rightx)/35;
    ballvy = (bally - righty)/35;
  }
if (bally < 40){
  bally = 40;}
 if (bally > height - 40){
   bally = height - 40;}

  //score left
  if (ballx > width - 40) {
   soundcontrol(score);
    lscore++;
    resetgame();
  }
  //score right
  if (ballx < 40) {
  soundcontrol(score);
    rscore++;
    resetgame();
  }

  //move paddles
  if (wkey == true) lefty = lefty - 5;
  if (lefty < 100) {
    lefty = 100;
  }
  if (skey == true) lefty = lefty + 5;
  if (lefty > height - 100) {
    lefty = height - 100;
  }
  if (AI == true) {
    if (ballx > width/2) {
      if (bally < righty) {
        if (ballspeed == 1) {
          righty --;
        } else if (ballspeed == 2) {
          righty = righty - 2;
        } else if (ballspeed == 3) {
          righty = righty - 4;
        } else {
          righty = righty - 0;
        }
      } else if (bally > righty) {
        if (ballspeed == 1) {
          righty ++;
        } else if (ballspeed == 2) {
          righty = righty + 2;
        } else if (ballspeed == 3) {
          righty = righty + 2;
        } else {
          righty = righty + 0;
        }
      }
    }
  } else if (AI == false) {
    //move right paddle
    if (upkey == true) righty = righty - 5;
    if (righty < 100) {
      righty = 100;
    }
    if (downkey == true) righty = righty + 5;
    if (righty > height - 100) {
      righty = height - 100;
    }
  }
}

void gameClicks() {
  if (mouseX > 73 && mouseX < 138 && mouseY > 55 && mouseY < 120) {
    mode = pause;
  }
}
