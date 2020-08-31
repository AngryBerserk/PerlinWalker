float tx = random(1);
float ty = random(100);
float x;
float y;
float incx = 0.005;
float incy = 0.005;

void setup(){
 size(800,600);
 x = width/2;
 y = height/2;
}
  
void draw(){
  for (int i = 0; i<100; i++){
   x = map(noise(tx), 0, 1, 0, width);
   y = map(noise(ty), 0, 1, 0, height);
   ellipse(x,y,15,15);
   tx += incx;
   ty += incy;
 }
}