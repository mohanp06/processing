/*PENDULUM SIMULATION: WRITTEN BY MOHAN P. PATHAK*/

int x0, y0, x, y;
float theta0=30, theta=0;
float t=0, T=50;
int num=16;

void setup() {
  fullScreen();
  background(0);
  x0=width/2;
  y0=height/2;
  x=0;
  y=0;
}

void draw() {
  translate(x0, y0);
  background(0);
  ellipseMode(CENTER);

  /* DRAW THE PENDULUMS*/

  colorMode(HSB, 600);

  float l, omega, theta, xx, yy;
  l=omega=theta=xx=yy=0;

  for (int n=1; n<=num; n++) {

    l=600+20*n;
    omega=sqrt(9.8/l);
    theta=radians(theta0)*cos(omega*t);
    xx=l*sin(theta);
    yy=-y0+l*cos(theta);

    strokeWeight(3);
    stroke(l%600, 600, 400);
    fill(l%600, 600, 600);
    line(0, -y0, xx, yy);
    ellipse(xx, yy, 20, 20);
    ellipse(0, -y0, 50, 50);


    t+=0.5/T;
  }
}
