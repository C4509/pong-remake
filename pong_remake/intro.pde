void intro() {
  background(13, 221, 255);
  win.rewind();
  win.pause();
  if (sound == 0 || mode!=intro) {
    theme.rewind();
    theme.pause();
  } else if (sound == 1) {
    theme.play(); 
  }
  strokeWeight(1);
  textSize(225);
  fill(lightyellow);
  text("Pong", 153, 270);
  //1 player game start button
  tactileRect(230, 400, 580, 500, lightyellow, purple, purple, lightyellow);
  rect(230, 400, 350, 100);
  //2 player game start button
  tactileRect(230, 550, 590, 650, lightyellow, purple, purple, lightyellow);
  rect(230, 550, 360, 100);
  tactileRect(280, 680, 530, 780, lightyellow, purple, purple, lightyellow);
  rect(280, 680, 250, 100);
  textSize(60);
  fill(0);
  textFill(230, 400, 580, 500, purple, lightyellow);
  text("One Player", 250, 468);
  textFill(230, 550, 590, 650, purple, lightyellow);
  text("Two Player", 255, 618);
  textFill(280, 680, 530, 780, purple, lightyellow);
  text("Options", 290, 748);
}

void introClicks() {
  if (mouseX > 230 && mouseX < 580 && mouseY > 400 && mouseY < 500) {
    AI = true;
    mode = game;
  } else if (mouseX > 230 && mouseX < 590 && mouseY > 550 && mouseY < 650) {
    AI = false;
    mode = game;
  } else if (mouseX > 280 && mouseX < 530 && mouseY > 680 && mouseY < 780) {
    mode = options;
  }
}
