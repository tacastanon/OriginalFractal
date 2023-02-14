public void setup() {
  size(500, 500);
  rectMode(CENTER);
}

public void draw() {
  background(#242423);
  myFractal(250, 250, 100);
}

public void myFractal(int x, int y, int siz) {
  strokeWeight(1);
  stroke(#FE938C, 50);
  fill(#FE938C, 40);
  ellipse(x, y, siz, siz+30);
  stroke(#81B29A, 50);
  fill(#81B29A, 40);
  ellipse(x-100, y-100, siz, siz+30);
  stroke(#8F6593, 50);
  fill(#8F6593, 40);
  ellipse(x+100, y+100, siz, siz+30);
  if (siz <20)
  {
    noFill();
    stroke(255, 0, 0);
    ellipse(x, y, 0, 0);
  } else
  {
    noFill();
    ellipse(x, y, siz, siz);
    myFractal(x-siz, y, siz/2);
    myFractal(x+siz, y, siz/2);
    myFractal(x+2*siz, y, siz/2);
    myFractal(x-2*siz, y, siz/2);
    myFractal(x+siz, y+siz, siz/2);
    myFractal(x-siz, y-siz, siz/2);
    myFractal(x-siz, y+siz, siz/2);
    myFractal(x+siz, y-siz, siz/2);
  }
}
