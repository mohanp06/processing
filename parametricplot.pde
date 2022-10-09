/* PROGRAM TO DRAW A PARAMETRIC PLOT IN CARTESIAN CO-ORDINATE SYSTEM */

float x0, y0, x, y;
float x_range, y_range, resolution;

void setup() {

  fullScreen();  
  noLoop();

  //DEFINE THE ORIGIN AS THE CENTRE OF THE SCREEN
  x0 = width/2;  
  y0 = height/2;

  x_range = x0;  
  y_range = y0;

  resolution=0.01;
}

void draw() {

  drawAxes();

  /* PLOT THE GRAPH WITH t AS THE PARAMETER*/
  float t=0;
  for (t=-100; t<=100; t+=resolution) {
    
    //GIVE THE PARAMETRIC EQUATIONS HERE
    x=(float)(200/cos(t*3));//(50/cos(t/7));
    y=(float)(300+100*sin(5*t));//(50*tan(t/2));
    
    //PLOT ONLY IF THE POINT FALLS WITHIN SCREEN BOUNDARIES
    if ((Math.abs(y)<=y_range) && (Math.abs(x)<=x_range))  plot(x, y);
  }
}

void drawAxes() {
  /* DRAW THE CO-ORDINATE AXES */
  background(255);
  stroke(0);  
  strokeWeight(1);

  line(0, y0, width, y0);
  line(x0, 0, x0, height);

  /* TICK MARKS AND NUMBERS ALONG X-AXIS */
  for (x=(int)-x_range/100*100; x<=x_range; x+=100) {
    line(x0+x, y0-2, x0+x, y0+2);
    fill(0);
    text(Float.toString(x), x0+x-10, y0+15);
  }

  /* TICK MARKS AND NUMBERS ALONG Y-AXIS */
  for (y=(int)-y_range/100*100; y<=y_range; y+=100) {
    stroke(100);
    line(x0-2, y0-y, x0+2, y0-y);
    fill(0);
    if (y!=0)text(Float.toString(y), x0+10, y0-y+5); //TO AVOID TWO ZERO-MARKS
  }
}

void plot(float x, float y) {

  stroke(0, 75, 225);  
  strokeWeight(3);

  x=x0+x;
  y=y0-y;
  point(x, y);
}
