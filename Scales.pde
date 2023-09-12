void setup() {
  size(500, 500);  //feel free to change the size
  noLoop();
}
void draw() {
  scale(-50, -50, 0, 0, 0);
}
void scale(int x, int y, int r, int g, int b){
  while (y < 500){
     while (x < 500){
       
       r = (int)(Math.random()*100);
       g = (int)(Math.random()*100);
       b = (int)(Math.random()*100);
       fill(r,g,b);
       
       noStroke();
       beginShape();
       curveVertex(x,  y);
       curveVertex(x,  y);
       curveVertex(x+20,  y-20);
       curveVertex(x+40,  y);
       curveVertex(x+25, y+20);
       curveVertex(x+20, y+50);
       curveVertex(x+15, y+20);
       curveVertex(x, y);
       curveVertex(x+20, y-20);
       curveVertex(x+20, y-20);
       endShape();
       
       System.out.print(x);
       System.out.println(", " + y);
       
       x += 40;
     }
     y += 25;
     if (y/120 == 1){
       x = -30;
     }else{
       x = -50;
     }
   }
}
