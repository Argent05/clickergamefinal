void option(){
  
  
  
  background(mediumblue);
 fill(white);
  textSize(100);
  text("Difficulty", width/2,60);
  
  
  
  strokeWeight(7);
  fill(white);
tactile(100,300,200,100);
  rect(100, 300, 200, 100);
   fill(black);
   textSize(30);
   text("Baby", width/4,350);
   
   fill(white);
  tactile(350, 300, 200, 100);
  rect(350, 300, 200, 100);
   fill(black);
   textSize(30);
   text("Decent", width/4+250,350);
   
   
   fill(red);
  tactile(600, 300, 180, 100);
  rect(600, 300, 180, 100);
   fill(224,217,217);
   textSize(30);
   text("Asian", width/4 + 490,350);
  
  
  
}




void optionClicks() {
  
  if (mouseX > 100 && mouseX < 300 && mouseY > 300 && mouseY < 400){
  targetSpeedX = 1.1;
  targetSpeedY = 1.1;
    mode = game;
}
   if (mouseX > 350 && mouseX < 650 && mouseY > 300 && mouseY < 400){
  targetSpeedX = -1.1;
  targetSpeedY = -1.1;
    mode = game;
}
   if (mouseX > 600 && mouseX < 700 && mouseY > 300 && mouseY < 400){
  targetSpeedX = -2.2;
  targetSpeedY = -2.4;
    mode = game;
}
  
}
