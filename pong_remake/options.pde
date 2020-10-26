void options() {
  background(13, 221, 255);
  textSize(35);
  fill(0);
  text("Ball Speed:", 50, 100);
  fill(255);
  strokeWeight(5);
  //buttons to set ball speed
  //slow button
  tactileRect3(250, 70, 350, 120, purple, daffodil, daffodil, purple, 1);
  rect(250, 70, 100, 50);
  //average button
  tactileRect3(380, 70, 525, 120, purple, daffodil, daffodil, purple, 2);
  rect(380, 70, 145, 50);
  //fast button
  tactileRect3(550, 70, 650, 120, purple, daffodil, daffodil, purple, 3);
  rect(550, 70, 100, 50);
  fill(0);
  textFill2(250, 70, 350, 120, daffodil,purple, 1);
  text("Slow", 260, 110);
  textFill2(380, 70, 525, 120, daffodil,purple, 2);
  text("Average", 385, 110);
  textFill2(550, 70, 650, 120, daffodil,purple, 3);
  text("Fast", 565, 110);
  fill(0);
  text("Sound:",110,220);
  //buttons to control if sound is on or off
  //on button
  tactileRect2(250, 190, 350, 240, purple, daffodil, daffodil, purple,1);
  rect(250,190,100,50);
  //off button
  tactileRect2(380, 190, 480, 240, purple, daffodil, daffodil, purple,0);
  rect(380,190,100,50);
  textFill3(250, 190, 350, 240, daffodil, purple,1);
  text("On",270,230);
  textFill3(380, 190, 480, 240, daffodil, purple,0);
  text("Off", 400, 230);
  tactileRect(650,700,750,750,purple, daffodil, daffodil, purple);
  rect(650,700,100,50);
  fill(0);
  textFill(650,700,750,750, daffodil, purple);
  text("Back",660,740);
    if (sound == 0) {
    theme.rewind();
    theme.pause();
  } else if (sound == 1) {
    theme.play(); 
  }
}

void optionsClicks() {
  //control speed of ball
  if (mouseX > 250 && mouseX < 350 && mouseY > 70 && mouseY < 120) {
    ballspeed=1;
    if (random(100) > 50) {
      ballvx=3;
      ballvy=3;
    } else {
      ballvx = -3;
      ballvy = -3;
    }
  } else if (mouseX > 380 && mouseX < 525 && mouseY > 70 && mouseY < 120) {
    ballspeed = 2;
    if (random(100) > 50) {
      ballvx=5;
      ballvy=5;
    } else {
      ballvx = -5;
      ballvy = -5;
    }
  } else if (mouseX > 550 && mouseX < 650 && mouseY > 70 && mouseY < 120) {
    ballspeed = 3;
    if (random(100) > 50) {
      ballvx=7;
      ballvy=7;
    } else {
      ballvx = -7;
      ballvy = -7;
    }
    //toggle sound on or off
  } else if(mouseX > 250 && mouseX < 350 && mouseY > 190 && mouseY < 240) {
    sound = 1;} 
    else if(mouseX > 380 && mouseX < 480 && mouseY > 190 && mouseY < 240) {
    sound = 0;}
    //return to intro screen
    else if (mouseX > 650 && mouseX < 750 && mouseY > 700 && mouseY < 750){
    mode = intro;
  }
}
