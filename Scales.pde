void setup() {
  size(500, 500);  //feel free to change the size
  noLoop();
}
void draw() {
  int y = -50;
  int x = -50;
  int scaleSet = 1;
  while (y < 550){
     while (x < 500){
       scale(x,y,0,0,0);
       
       x += 40;
     }
     y += 15;
     if(scaleSet == 1){
       x = -50;
     }else{
       x = -30;
     }
     scaleSet = scaleSet*-1;
     
   }
}

void scale(int x, int y, int r, int g, int b){
       
       r = (int)(Math.random()*40);
       g = (int)(Math.random()*40);
       b = (int)(Math.random()*220);
       fill(r,g,b);
       noStroke();
       
       beginShape();
       curveVertex(x,  y);
       curveVertex(x,  y);
       curveVertex(x+20,  y-20);
       curveVertex(x+40,  y);
       curveVertex(x+25, y+10);
       curveVertex(x+20, y+50);
       curveVertex(x+15, y+10);
       curveVertex(x, y);
       curveVertex(x+20, y-20);
       curveVertex(x+20, y-20);
       endShape();
}
