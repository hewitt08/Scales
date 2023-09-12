void setup() {
  size(500, 500);  //feel free to change the size
  noLoop();
}
void draw() {
  scale(-50, -50, 0, 0, 0, 1);
}
void scale(int x, int y, int r, int g, int b, int scaleSet){
  while (y < 550){
     while (x < 500){
       
       r = (int)(Math.random()*40);
       g = (int)(Math.random()*50);
       b = (int)(Math.random()*190);
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
     if(scaleSet == 1){
       x = -50;
     }else{
       x = -30;
     }
     scaleSet = scaleSet*-1;
     
   }
}
