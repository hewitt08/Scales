void setup() {
  size(500, 500);  //feel free to change the size
  noLoop();
}
void draw() {
  scale(50, 50);
}
void scale(int x, int y){
  while (y < 500){
     while (x < 500){
       fill(0,200,0);
       noStroke();
       ellipse(x,y,20,20);
       System.out.print(x);
       System.out.println(", " + y);
       x += 50;
     }
     y += 50;
     x = 50;
   }
}
