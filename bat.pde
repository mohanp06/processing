void setup(){
  fullScreen();
  background(0);
  stroke(192);
  strokeWeight(3);
  noLoop();  
}

void draw(){
  line(100,100,250,250); //bat handle lower edge
  line(125,75,275,225);  //bat handle upper edge
  line(100,100,125,75);  //bat handle upper width
  line(275,225,300,200); //bat upper collar
  line(250,250,225,275); //bat lower collar
  line(300,200,600,500); //bat upper edge
  line(225,275,525,575); //bat lower edge
  noFill();
  arc(525,500,150,150,0,PI/2);  //curved edge of bat
  ellipse(600,400,50,50);       //ball
  strokeWeight(1);
  line(575,398,625,398);        //ball seam upper edge
  line(575,402,625,402);        //ball seam lower edge
}