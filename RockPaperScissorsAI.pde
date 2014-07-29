//formerly required to be opened with azhou16.github.io/RockPaperScissors/, as she is the owner of the repository

/* @pjs preload="rock.jpg"; */
/* @pjs preload="paper.jpg"; */
/* @pjs preload="scissors.jpg"; */

PImage rock, paper, scissors;
boolean run = true;
int choice, compchoice; //rock = 1, paper = 2, scissors = 3
int ai = 1;
boolean pressed1 = false;
boolean pressed2 = false;
boolean pressed3 = false;

void setup() {
  //set canvas size and color
  size(700, 550);
  background(255);
  rock = loadImage("rock.jpg","jpg");
  paper = loadImage("paper.jpg","jpg");
  scissors = loadImage("scissors.jpg","jpg");
}

void draw() {
  
  text("AI : " + ai, 550, 30);
  
  image(rock, 20, 20, rock.width/4, rock.height/4);
  image(paper, 20, 170, paper.width/4, paper.height/4);
  image(scissors, 20, 320, scissors.width/4, scissors.height/4);
  fill(0, 200, 0);
  noStroke();
  rect(55, 470, 140, 35, 5);
  rect(205, 470, 140, 35, 5);
  rect(355, 470, 140, 35, 5);
  fill(0);
  text("AI 1", 113, 493);
  text("AI 2", 263, 493);
  text("AI 3", 413, 493);
  
  if (mouseX > 55 && mouseX < 195 && mouseY > 470 && mouseY < 505){
    fill(0, 255, 0);
    rect(55, 470, 140, 35, 5);
    fill(0);
    text("AI 1", 113, 493);
    if (mousePressed){
      ai = 1;
      fill(255);
      rect(540, 20, 50, 50);
    }
  }
  else if (mouseX > 205 && mouseX < 345 && mouseY > 470 && mouseY < 505){
    fill(0, 255, 0);
    rect(205, 470, 140, 35, 5);
    fill(0);
    text("AI 2", 263, 493);
    if (mousePressed){
      ai = 2;
      fill(255);
      rect(540, 20, 50, 50);
    }
  }
  else if (mouseX > 355 && mouseX < 495 && mouseY > 470 && mouseY < 505){
    fill(0, 255, 0);
    rect(355, 470, 140, 35, 5);
    fill(0);
    text("AI 3", 413, 493);
    if (mousePressed){
      ai = 3;
      fill(255);
      rect(540, 20, 50, 50);
    }
  } 
  
  
  
  if (mouseX > 20 && mouseX < 145 && mouseY > 20 && mouseY < 158 && mousePressed){
    if (mousePressed){
      if(!pressed1){
        choice = 1;
        check();
        pressed1 = true;
      }
    }
  }
  else{
    pressed1 = false;
  }
  
  if (mouseX > 20 && mouseX < 145 && mouseY > 170 && mouseY < 308 && mousePressed){
    if (mousePressed){
      if(!pressed2){
        choice = 2;
        check();
        pressed2 = true;
      }
    }
  }
  else{
    pressed2 = false;
  }
  
  if (mouseX > 20 && mouseX < 145 && mouseY > 320 && mouseY < 458 && mousePressed){
    if (mousePressed){
      if(!pressed3){
        choice = 3;
        check();
        pressed3 = true;
      }
    }
  }
  else{
    pressed3 = false;
  }
  
}

void check() {
  int score_difference;
  int computerwin = -1; //1 = win; 0 = draw; 2 = loss (FOR COMPUTER)
  if (ai == 1){
    compchoice = 3;
  }
  else if (ai == 2){
    compchoice = int(random(1, 4));
  }
  else if (ai == 3){
  }
    
  if (choice == 1){
    image(rock, 175, 170, rock.width/4, rock.height/4);
    fill(255);
    noStroke();
    rect(325, 125, 200, 230);
  }
  else if (choice == 2){
    image(paper, 175, 170, paper.width/4, paper.height/4);
    fill(255);
    noStroke();
    rect(325, 125, 200, 230);
  }
  else if (choice == 3){
    image(scissors, 175, 170, scissors.width/4, scissors.height/4);
    fill(255);
    noStroke();
    rect(325, 125, 200, 230);
  }
  
  if (compchoice == 1){
    image(rock, 500, 170, rock.width/4, rock.height/4);
  }
  else if (compchoice == 2){
    image(paper, 500, 170, paper.width/4, paper.height/4);
  }
  else if (compchoice == 3){
    image(scissors, 500, 170, scissors.width/4, scissors.height/4);
  }
  
  score_difference = (compchoice - choice + 3) % 3;
  
  //1 = rock; 2 = paper; 3 = scissors
  //2 beats 1, 3 beats 2, 1 beats 3
  
  if (score_difference == 1){
    computerwin = 1;
  }
  else if (score_difference == 0){
    computerwin = 0;
  }
  else if (score_difference == 2){
    computerwin = 2;
  }
  
  if (computerwin == 1){
    fill(0);
    text("You lose!  Try again!", 325, 235);
  }
  else if (computerwin == 0){
    fill(0);
    text("Draw", 335, 235);
  }
  else if (computerwin == 2){
    fill(0);
    text("You win!", 325, 235);
  }
}



