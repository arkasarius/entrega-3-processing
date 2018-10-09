public class ull {
  int posX, posY;
  float radiExterior;
  float radiPupila;

  ull(int a, int b, float c) {
    posX=a;
    posY=b;
    radiExterior=c;
    radiPupila=c/3;
  }

  void run() {
    fill(0);
    ellipse(posX, posY, radiExterior, radiExterior);
    PVector centre= new PVector(posX, posY);
    PVector mouse= new PVector(mouseX, mouseY);
    centre=mouse.sub(centre);
    centre.normalize();
    PVector g = new PVector (posX, posY); 
    PVector f= new PVector(mouseX, mouseY);
    float d = g.dist(f);
    d=d>radiPupila ? radiPupila : d;
    fill(255);
    ellipse(centre.x*d+posX, centre.y*d+posY, radiPupila, radiPupila);
  }
}
