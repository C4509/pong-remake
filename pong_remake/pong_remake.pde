import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Cierra Cheung
//Oct.15, 2020
//Block 1-1B
//intro music credits: https://www.youtube.com/watch?v=2kP1bZfUNJEt
//Note for Mr. Pelletier: right paddle ignores the limit when in AI mode. When it reaches
//the edge, the paddle will start a process of repeatedly moving up or down until only
//half of it is shown, then completely return to the screen and move upwards/downwards
//again. I asked you about this on Teams o the due date, but you didn't respond, so I 
//decided to just turn in the project to get it in on time.
Minim minim;
AudioPlayer score;
AudioPlayer paddle1;
AudioPlayer paddle2;
AudioPlayer wall;
AudioPlayer theme;
AudioPlayer win;
//mode variables
int mode;
final int intro= 1;
final int options=2;
final int game= 3;
final int pause = 4;
final int gameover= 5;

int ballspeed;
//colors
color mint = #12FF7A;
color daffodil = #DDF298;
color purple = #C311F5;
color t = #27EBFF;
//entity variables
float leftx, lefty, rightx, righty, leftd, rightd;
float ballx, bally, balld, ballvx, ballvy;
float timer;
boolean AI;

//keyboard variables
boolean wkey, skey, upkey, downkey;

//score variable
int rscore;
int lscore;
float sound;

void setup() {
  size(800, 800);
  mode = intro;
  //initialize paddles
  //left paddle
  leftx = 0;
  lefty = height/2;
  leftd=200;
  //right paddle
  rightx = width;
  righty = height/2;
  rightd = 200;
  //initialize ball
  ballx = width/2;
  bally = height/2;
  ballvx = random(-5, 5);
  ballvy = random(-5, 5);
  balld = 80;
  //initialize keys
  wkey = false;
  skey = false;
  upkey = false;
  downkey = false; 
  //initialize score variables
  rscore = 0;
  lscore = 0;
  //initialize ball speed
  ballspeed=2;
  sound = 1;
  //initialize AI
  AI = true;
  //initialize timer
  timer = 100;
  minim = new Minim(this);
  score = minim.loadFile("score.wav");
  paddle1 = minim.loadFile("leftpaddle.wav");
  paddle2 = minim.loadFile("rightpaddle.wav");
  theme = minim.loadFile("pong.mp3");
  wall = minim.loadFile("wall.wav");
  win = minim.loadFile("applause3.mp3");
}

void draw() {
  if (mode==intro) {
    intro();
  } else if (mode==options) {
    options();
  } else if (mode==game) {
    game();
  } else if (mode==pause) {
    pause();
  } else if (mode==gameover) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}
