ull a, b;
ull[] z;
void setup() {
  size(500, 500);
  background(190);
  a= new ull(100, 250, 200);
  b= new ull(500-100, 250, 200);
  z= new ull[50];
  for (int i=0; i< 50; i++) {
    z[i] = new ull((int)random(500), (int) random(500), random(100));
  }
}

void draw () {
  // a.run();
  //b.run();
  for (ull k : z) {
    k.run();
  }
}
void mouseClicked() {
  save("ull.png");
  for (int i=0; i< 50; i++) {
    z[i] = new ull((int)random(500), (int) random(500), random(100));
  }
  background(190);
}
