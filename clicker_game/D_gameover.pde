void gameover() {
background(0);
  theme.pause();
  GAMEOVER.play();

  fill(white);
  textSize(40);
 text("bro u suck, imagine dying " + death ,width/2, 30);  // this plus why not working
  
  if (score > highscore){
   highscore = score; 
  }
  text("Highscore: " + highscore, width/2, 130);
   if (mouseX > 100 && mouseX < 300 && mouseY > 500 && mouseY < 600){
  stroke(white);
    
}  else {
 stroke(red); 
  
} 
  
   rect(100, 500, 200, 100); 
    fill(black);
   
   textSize(30);
   text("Continue", width/4,550);
   fill(white);

fill(white);
  if (mouseX > 500 && mouseX < 700 && mouseY > 500 && mouseY < 600){
  stroke(white);
    
}  else {
 stroke(red); 
  
} 
   rect(500, 500, 200, 100);
   fill(black);
   text("Secrets", 600,550);


}


void gameoverClicks(){

  if (mouseX > 500 && mouseX < 700 && mouseY >500 && mouseY <600 ){
   mode = skins; 
  }
  
  if (mouseX > 100 && mouseX < 300 && mouseY > 500 && mouseY < 600){
  
    mode = intro;
} 
  
  
  
  
 death = death +1;
 lives = 3;
 score = 0;
 
 theme.rewind();
 

}
