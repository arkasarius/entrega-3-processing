class Ball { 
  int posX;
  int posY;
  float velX;
  float velY;
  int radi;
  color c;
  int vida;
  boolean alive=true;
  Ball() {
    posX=(int)random(100, 780);
    posY=(int)random(100, 780);
    velX=random(4)+1;
    velY=random(4)+1;
    radi=(int)random(49)+1;
    c=color(random(255), random(255), random(255));
    vida=(int)random(5000);
  }
    Ball(int a) {
    posX=(int)random(100, 780);
    posY=(int)random(100, 780);
    velX=random(4)+1;
    velY=random(4)+1;
    radi=(int)random(49)+1;
    c=color(random(255), random(255), random(255));
    vida=(int)random(a);
  }

  void pinta() {
    vida--;
    if (alive) {
      noStroke();
      fill(c);
      ellipse(posX, posY, radi, radi);
    } 
    if (vida<=0) {
      alive=false;
    }
  }
  void mou() {
    posX+=velX;
    posY+=velY;
    if (posX+radi/2>800) {
      velX=-velX;
      posX=800-radi/2;
      velY=RP();
    }
    if (posY+radi/2>800) {
      velY=-velY;
      posY=800-radi/2;
      velX=RP();
    }
    if (posX-radi/2<0) {
      velX=-velX;
      posX=radi/2;
      velY=RP();
    }
    if (posY-radi/2<0) {
      velY=-velY;
      posY=radi/2;
      velX=RP();
    }
  }

  float RP() {
    float a =0;
    while (a==0) {
      a = random(-8, 8);
    }
    return a;
  }
}
