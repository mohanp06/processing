int x0,y0;
PImage bg;

void setup(){
  
  fullScreen();
  frameRate(10);
  
  x0=width/2;
  y0=height/2;
  translate(x0,y0);

  /* BACKGROUND COLOUR */
  background(0);
  
  /*OUTER CIRCLE*/
  ellipseMode(RADIUS);
  stroke(255);
  strokeWeight(2);
  fill(16);
  ellipse(0,0,x0/3,x0/3);
  strokeWeight(4);
  noFill();
  ellipse(0,0,x0/3+20,x0/3+20);
  
  /* INNER CIRCLE */
  strokeWeight(2);
  fill(255);
  stroke(32);
  ellipse(0,0,x0/50,x0/50);
  
  float i=0;
  
  while(i<60){
    
    /* FIVE MINUTE MARKS */
    if(i%10==0){
      stroke(255);
      strokeWeight(3);
      line(x0/3,-5,x0/3-x0/20,-5);
      line(x0/3,5,x0/3-x0/20,5);
    }
    
    else if(i%5==0){
      stroke(255);
      strokeWeight(3);
      line(x0/3,0,x0/3-x0/20,0);
    }

    
 //   else{
      
      /* MINUTE MARKS */
      stroke(255);
      strokeWeight(2);
      line(x0/4,0,x0/4-x0/50,0);
   // }
    
    rotate(radians(6));
    i++;
  }
  
  bg=get(0,0,width,height);

}

  void draw(){
    
    background(bg);
    translate(x0,y0);

    int s = second();  // Values from 0 - 59
    int m = minute();  // Values from 0 - 59
    int h = hour();    // Values from 0 - 23
    
    float ss=radians(s*6)-PI/2;
    float mm=radians(m*6)-PI/2;
    float hh=radians(h*30+m/2)-PI/2;

    /* SECOND HAND */
    rotate(ss);
    stroke(255);
    strokeWeight(2);
    line(0,0,x0/4-x0/30,0);
    rotate(-ss);
    
    /*MINUTE HAND */
    rotate(mm);
    strokeWeight(5);
    line(0,0,x0/4-x0/30,0);
    rotate(-mm);
    
    /*HOUR HAND */
    rotate(hh);
    strokeWeight(10);
    line(0,0,x0/4-x0/10,0);
    rotate(-hh);
    
    /* DATE AND MONTH */
    
    int day=day();
    int month=month();

    float dayday=radians(day*6)-PI/2;
    float monthmonth=radians(month*30)-PI/2;

    /*MONTH*/
    rotate(monthmonth);
    fill(0,255,0);
    strokeWeight(2);
    stroke(0,128,0);
    ellipse(x0/3+10,0,10,10);
    strokeWeight(5);
    line(x0/3-x0/20,0,x0/3,0);
    rotate(-monthmonth);
    
    /*DATE*/
    rotate(dayday);
    fill(255,0,0);
    strokeWeight(2);
    stroke(128,0,0);
    ellipse(x0/3+10,0,6,6);
    strokeWeight(5);
    line(x0/3-x0/20,0,x0/3,0);
    rotate(-dayday);
}
