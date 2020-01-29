Spaceship sp;
ArrayList<Rock> rocks;
ArrayList<Laser> lasers; 
ArrayList<Star> stars;
Timer rockTimer;
Timer ticTimer;
int rockRate;
int score;
int money;
int LDprice;
int Hprice;
int LDtm;
int LD;
int Htm;
int H;
int level;
boolean ticker = false;
boolean play = false;
String ticText;
int passedRocks = 0;
//Rock[] rocks = new Rock[100];

void setup() {
  size(700, 700);
  sp = new Spaceship(0, 0);
  rocks = new ArrayList<Rock>();
  lasers = new ArrayList<Laser>();
  stars = new ArrayList<Star>();
  rockRate = 1000;
  rockTimer = new Timer(rockRate);
  ticTimer = new Timer(2000);
  rockTimer.start();
  level = 1;
  money = 0;
  LDprice = 1000;
  Hprice = 1000;
  LDtm = 0;
  Htm = 0;
  //for (int i = 0; i<rocks.length; i++) {
  //  rocks[i] = new Rock(int(random(width)), int(random(-10000, 20)));
  //}
}

void draw() {
  background(0);
  noCursor();

  //check for play
  if (!play) {
    startScreen();
  } else if (play) {
    
    // Level
    if (frameCount % 1000 == 10) {
      level++;
      ticText = "Level: " + level;
      ticker();
      rockRate-=50;
      rockTimer.totalTime = rockRate;
    }

    if (rockTimer.isFinished()) {
      rocks.add(new Rock(int(random(width)), -50));
      rockTimer.start();
    }
    // Render Rocks
    for (int i = rocks.size()-1; i>0; i--) {
      Rock rock = (Rock) rocks.get(i);
      rock.display();
      rock.move();
      if (rock.reachedBottom()) {
        rocks.remove(rock);
      }

      // Rock vs. Laser collision
      for (int j = lasers.size()-1; j>0; j--) {
        Laser laser = (Laser) lasers.get(j);
        if (dist(laser.x, laser.y, rock.x, rock.y)<40) {
          score+=10;
          money+=15+(level*2);
          lasers.remove(laser);
          rock.health-=laser.damage;
          if (rock.health<5) {
            rocks.remove(rock);
          }
        }
      }


      // Ship vs. Rock collision
      if (dist(sp.x, sp.y, rock.x, rock.y)<rock.w/2) {
        rocks.remove(rock);
        H-=rock.health;
        score+=rock.health;
        money+=5;
      }
      if (rock.reachedBottom()) {
        passedRocks++;
      }
    }
    //Render Starfield
    stars.add(new Star(int(random(width)), -10));
    for (int i = stars.size()-1; i>0; i--) {
      Star star = (Star) stars.get(i);
      star.display();
      star.move();
      if (star.reachedBottom()) {
        stars.remove(star);
      }
    }


    // Render Primary Fire
    for (int i = lasers.size()-1; i>0; i--) {
      Laser laser = (Laser) lasers.get(i);
      laser.fire();
      laser.display();
      println(laser.damage);
      laser.damage = LD+15;
      if (laser.reachedTop()) {
        lasers.remove(laser);
      }
    }
    sp.display(mouseX, mouseY);
    infoPanel();
    buy();
    sp.health=(H)+1000;
    if (ticker) {
      if (!ticTimer.isFinished()) {
        fill(255, 127);
        textSize(44);
        textAlign(CENTER);
        text(ticText, width/2, height/2);
      } else if (!ticTimer.isFinished() && H < 300) {
        fill(255, 127);
        textSize(44);
        textAlign(CENTER);
        text(ticText, width/2, height/2);
      }
    }

    if (sp.health < 1 || passedRocks > 10) {
      play = false;
      gameOver();
    } else {
      play = true;
    }
  }
}

void infoPanel() {
  fill(127, 127);
  rectMode(CORNER);
  rect(0, 650, width, 50);
  textSize(12);
  text("Score:" + score, 40, 660);
  text("Health:" + sp.health, 40, 675);
  text("Money:" + money, 40, 690);
}

void buy() {
  fill(#FEFF43);
  rectMode(CENTER);
  rect(300, 675, 100, 50);
  rect(500, 675, 100, 50);
  fill(0);
  text("Laser Damage", 300, 660);
  text("Health", 500, 660);
  text(LDprice, 300, 680);
  text(Hprice, 500, 680);
  text("Press 1 to buy", 300, 695);
  text("Press 2 to buy", 500, 695);
}

void ticker() {
  ticTimer.start();
  ticker = true;
  if (ticTimer.isFinished()) {
    ticker = false;
  }
}

void keyPressed() {
  //println(key);
  //println(keyCode);
  if (key == ' ') {
    lasers.add(new Laser(sp.x, sp.y));
  }
  if (key == '1') {
    if (money>LDprice) {
      money-=LDprice;
      LDtm+=1;
      LDprice+=1000*LDtm;
      LD=LDtm*15;
    }
  }
  if (key == '2') {
    if (money>Hprice) {
      Htm+=1;
      Hprice+=1000*Htm;
      H=(Htm*500);
    }
  }
}

void startScreen() {
  background(0);
  textAlign(CENTER);
  fill(255);
  textSize(32);
  text("Space game", width/2, height/2);
  text("Press space to fire", width/2, height/2 +50);
  text("Click to start", width/2, height/2+100);
  if (mousePressed) {
    play = true;
  }
}

void gameOver() {
  background(0);
  textAlign(CENTER);
  fill(255);
  text("Game Over!", width/2, height/2);
  noLoop();
}
