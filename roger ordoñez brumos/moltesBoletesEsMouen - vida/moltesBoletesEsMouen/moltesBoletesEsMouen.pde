Ball[] b;
int c=300;
void setup() {
  size(800, 800);
  b = new Ball[c];
  for (int i=0; i< c; i++) {
    b[i] = new Ball();
  }
}
void draw() {
  background(0);
  for (int i=0; i<c; i++) {
    b[i].mou();
    b[i].pinta();
  }
}
