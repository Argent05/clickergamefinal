

void skins() {
  background(black);

  image(skinimage1, 130, 400, 200, 200);
  image(skinimage2, 530, 440, 200, 200);

  fill(white);
 tactile(100, 540, 200, 100);
  rect(100, 540, 200, 100);
  fill(black);
  textSize(30);
  text("Back", width/4, 590);
  
  stroke(white);
  line(200,200,400,200);
  ellipse(sliderX,200,30,30);
  
    strokeWeight(5);
  circle(600,200,targetsize);
  
 
  if (skin == 0){
  image(img, 600,200, targetsize-10,targetsize-10);   // d - 10 
    
  }else if (skin == 1){
   image(skinimage1, 600,200, targetsize-10, targetsize-10);
  } else if (skin == 2){ 
    image(skinimage2, 600,200, targetsize-10,targetsize-10);
  }
  
  
}


void skinsClick() {


  
  
  highscore = 16;
  if (highscore >6 && mouseX > 30 && mouseX < 230 && mouseY > 300 && mouseY < 500) {
    skin = 1;
    println("********");
  }

  if (highscore >15 && mouseX > 430 && mouseX < 630 && mouseY > 340 && mouseY < 540) {
    skin = 2;
  }// add back bracket, ask him why the skin is not changing


  if (mouseX > 100 && mouseX < 300 && mouseY > 540 && mouseY < 640) {
    mode = gameover;
  }
}


void skinsDragged(){
   //slider
 if (mouseX >200 && mouseX <  400 && mouseY < 230 && mouseY > 170){
   sliderX = mouseX;
  
 } 
 targetsize = map(sliderX,200,400,40,170);
  
}
