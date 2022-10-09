/* Computer Art by Mohan Prabhakar Pathak */
/* Code written in 'processing' software */

int x0,y0,x,y,i;

void setup(){
  fullScreen();
  background(0);
  x0=width/2;
  y0=height/2;
  stroke(255);
  fill(0);
  rectMode(CENTER);
  i=0;
}
  void draw(){ 
    
    colorMode(HSB,100,100,100);
    strokeWeight(2);
    
    stroke(12,80,100);
    //line(0,y0,2*x0,y0);
    
    strokeWeight(1);
 
    translate(i-200,y0-71);
    rotate(radians(i));
    stroke(12,80,100);
    rect(0,0,100,100);
    
    stroke(100,100,100);
    line(0,0,200,200);
    
    if(i<width+300) i++;
}
void mouseClicked(){

}
void mouseMoved(){
  
}