import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
PFont thefont;

PImage img;
PImage skinimage;
PImage skinimage2;
PImage skinimage1;

int skin = 0;

int highscore;
int death = 1;
int counter = 0;
int mode;
final int intro = 1;
final int game = 2;     // final means lock th variable, cant change
final int pause = 3 ;
final int gameover= 4;
final int options = 5;
final int skins = 6;


// target variables
float x, y, d;
float vx, vy; //target velocities
int score, lives;
float targetSpeedX = 1.1;
float targetSpeedY = 1.1;
float targetsize = 100;
float sliderX = 200;


// sound variables
Minim minim;
AudioPlayer theme, coin, bump, GAMEOVER;



void setup () {    // unexpected token void means theres a error in the previous tab, previous function
  size(800, 800);  // if you highlight the code and theres a brace thats doesnt have a pair highlighted, theres a missing one
  mode = intro;
  textAlign(CENTER, CENTER);
  thefont = createFont("walkthemoon.ttf", 128);
imageMode(CENTER);
//target skins 
img = loadImage("pikachu1.png");
skinimage= loadImage("pikachu2.png");
skinimage2 = loadImage("pikachu5.png");
skinimage1 = loadImage("pikachu3.png");


  //target initalization
  x = width/2;  // middle of the width of the screen
  y= height/2;  // middle of the height of the screen
  d= 100;
  vx= random(5, -5);
  vy = random(-5, 5);
  score = 0;
  lives = 3;
 

  //minim
  minim = new Minim(this);
  theme = minim.loadFile("mario bros theme.mp3");
  coin = minim.loadFile("coin.wav");
  bump  = minim.loadFile("bump.wav");
  GAMEOVER = minim.loadFile("gameover.wav");
}


void draw() {
  println(skin);
  
  if (mode == intro) {
    intro();
  } else if (mode == game) {
    game();
  } else if (mode == gameover) {
    gameover();
  } else if (mode == pause) {
    pause();
  } else if (mode == options) {
    option();
  }else if (mode == skins){
   skins(); 
  }
  else {
    println("Error: Mode = " + mode);
  } 
}
