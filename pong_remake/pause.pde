//pause screen  
void pause() {
  fill(255, 197, 3);
  stroke(255, 197, 3);
  strokeWeight(1);
  //resume button
  rect(73, 55, 65, 65);
  fill(8, 34, 157);
  stroke(8, 34, 157);
  triangle(95, 67, 120, 85, 95, 110);
  textSize(250);
  fill(daffodil);
  text("PAUSE", 40, 400);
}
void pauseClicks() {
  if (mouseX > 73 && mouseX < 138 && mouseY > 55 && mouseY < 120) {  
    mode = game;
  }
}
