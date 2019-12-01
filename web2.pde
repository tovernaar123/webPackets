import netP5.*;
import oscP5.*;
OscP5 meosc;
//NetAddress ip;
String x;
boolean draw= false;
void setup() {
  size(400,400);
  background(0);
meosc = new OscP5(this,2222);
meosc.plug(this,"test","/test");
noLoop();
}
void draw() {
 println(meosc.ip());
 //test(100,100); 
 background(0);
 println(meosc.ip());
if(draw) {
text(x,100,100);
} 
}

public void test(String x1) {
x = x1;
  if(!draw) {
   draw = true; 
  } 
redraw();  
}
