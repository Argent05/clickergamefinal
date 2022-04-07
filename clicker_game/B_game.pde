void game() {
  background(white);
  fill(black);
 textSize(30);
  text("Score: " + score, width/2,50);  // center of the screen, 50 down
  text("Lives: " + lives, width/2,100);
  
  //pause button
  stroke(0);
  fill(255);
  circle(100,100,100);
  
  strokeWeight(5);
  circle(x, y,targetsize);
  
 
  if (skin == 0){
  image(img, x,y, targetsize-10,targetsize-10);   // d - 10 
    
  }else if (skin == 1){
   image(skinimage1, x,y, targetsize-10, targetsize-10);
  } else if (skin == 2){ 
    image(skinimage2, x,y, targetsize-10,targetsize-10);
  }
  

  //if 
  // moving
  x = x +vx;  // not done around 7 mins
  y = y +vy;
  //bouncing
  
  if (x<d/2 || x > width - targetsize/2) {
   vx = vx * -1;
  }
  
  if (y < d/2 || y > height - targetsize/2) {  // if y is smaller than 50, the radius of the circle, or if the y passes 800 -radius bounce
   vy = vy * -1; 
  }
  
  println(vx, vy);
}


void gameClicks() {  // what is gameclicks
  //mode = pause;
  
  if (dist(mouseX,mouseY, x,y) < targetsize/2){   // ask to explain this 
   vx = vx * targetSpeedX;
   vy = vy * targetSpeedY;
   score = score + 1; 
   coin.rewind();
   coin.play();
  } else if (dist(mouseX, mouseY, 100,100) <targetsize/2){
    mode = pause;
  }else {
   lives = lives - 1;
   bump.rewind();
   bump.play();
   if(lives == 0) mode = gameover; // the double == means to check if lives = that value
  }
  
}
