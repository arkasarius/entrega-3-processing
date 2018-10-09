import processing.pdf.*;

size(300, 300, PDF, "dibuix.pdf");
for (int i=10; i<300; i+=10) {
  for (int j=10; j<300; j+=10) {
    noStroke();
    fill(random(i+j));
    ellipse(i, j, 10, 10);
  }
}
exit();
