void game() {
  background(14, 11, 113);
  theme.rewind();
  theme.pause();
  strokeWeight(2);
  fill(227, 151, 103);
  line(400, 0, 400, 800);
  timer = timer - 1;
  //text keeping track of score
  fill(255, 197, 3);
  textSize(60);
  text(lscore, 200, 100);
  fill(38, 230, 334);
  text(rscore, 600, 100);
  //pause button
  fill(255, 197, 3);
  stroke(255, 197, 3);
  rect(73, 55, 65, 65);
  fill(8, 34, 157);
  stroke(8, 34, 157);
  rect(90, 65, 10, 40);
  rect(110, 65, 10, 40);

  if (lscore == 3 || rscore == 3) {
    mode=gameover;
  }
  //draw ball
  fill(220, 150, 232);
  stroke(lightyellow);
  strokeWeight(5);
  circle(ballx, bally, balld);
  //draw paddles
  fill(255, 197, 3);
  stroke(38, 230, 334);
  circle(leftx, lefty, leftd);
  fill(38, 230, 334);
  stroke(255, 197, 3);
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
  //make ball bounce off paddles at intuitive angle
  if (dist(leftx, lefty, ballx, bally) < 140) {
    soundcontrol(paddle1);
    ballvx = (ballx - leftx)/20;
    ballvy = (bally - lefty)/20;
  }
  if (dist(rightx, righty, ballx, bally) < 140) {
    soundcontrol(paddle2);
    ballvx = (ballx - rightx)/20;
    ballvy = (bally - righty)/20;
  }
  //ball limits
  if (bally < 0) {
    bally = 40;
  }
  if (bally > height - 40) {
    bally = height - 40;
  }

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

  //move left paddle
  if (wkey == true) lefty = lefty - 5;
  //left paddle limit
  if (lefty < 110) {
    lefty = 110;
  }
  if (skey == true) lefty = lefty + 5;
  //left paddle limit
  if (lefty > height - 110) {
    lefty = height - 110;
  }
  //move right paddle
  if (AI == true) {
    if (ballx > width/2) {
      if (bally < righty) {
        if (ballspeed == 1) {
          righty = righty - 2;
        } else if (ballspeed == 2) {
          righty = righty - 3;
        } else if (ballspeed == 3) {
          righty = righty - 5;
        } else {
          righty = righty - 0;
        }
      } else if (bally > righty) {
        if (ballspeed == 1) {
          righty ++;
        } else if (ballspeed == 2) {
          righty = righty + 5;
        } else if (ballspeed == 3) {
          righty = righty + 2;
        } else {
          righty = righty + 0;
        }
      }
    }
  } else if (AI == false) {
    if (upkey == true) righty = righty - 5;
    if (downkey == true) righty = righty + 5;
  }
  //right paddle limits
  if (righty < 110) {
    righty = 110;
  }
  if (righty > height - 110) {
    righty = height - 110;
  }
}

void gameClicks() {
  if (mouseX > 73 && mouseX < 138 && mouseY > 55 && mouseY < 120) {
    mode = pause;
  }
}
