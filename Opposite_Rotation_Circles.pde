

//creating variables outside for my draw to access
float theta = 0;
float theta2 = 0;
ArrayList<Line> lines = new ArrayList<Line>();
float trailSpeed = 0.04;

//float r1(float theta){
//  return 3;
//};

//float r2(float theta){
//  return 5;
//}



float x1(float t) {
  return  cos(t) * 200;
  //return cos(t) * mouseX;
}

float y1(float t) {
  return sin(t) * 200;
  //return cos(t) * mouseY;
}

float x2(float t) {
  return -1 * cos(t) * 100;
  //return -1 * cos(t) * mouseX;
}

float y2(float t) {
  return -1 * sin(t) * 100;
  //return -1 * sin(t) * mouseY;
}

//setting up the canvas
void setup(){
  size(800,600);
  background(0);
  
}

//draw is a constant for loop
void draw(){
  background(0);
  //color(random(0,255),random(0,255),random(0,255));
  translate(width/2, height/2);
  
  
  stroke(random(0,255),random(0,255),random(0,255));
  strokeWeight(6);
  //point(x1(theta),y1(theta));
  //point(x2(theta),y2(theta));  
  fill(random(0,255),random(0,255),random(0,255));
  line(x1(theta),y1(theta),x2(theta2),y2(theta2));
  //lines.add(new Line(x1(theta),y1(theta),x2(theta2),y2(theta2)));
  for (int i = 1; i < lines.size(); i++){
    color(random(0,255), random(0,255), random(0,255));
    line(x1(theta- (trailSpeed * i)),y1(theta-(trailSpeed * i)),
    x2(theta2-(trailSpeed * i)),y2(theta2-(trailSpeed * i)));
  }
  if(lines.size() > 10){
    lines.remove(0);
  }
  //line(x1(theta-0.1),y1(theta-0.1),x2(theta2-0.1),y2(theta2-0.1));
  //line(x1(theta-0.2),y1(theta-0.2),x2(theta2-0.2),y2(theta2-0.2));
  //line(x1(theta-0.3),y1(theta-0.3),x2(theta2-0.3),y2(theta2-0.3));
  theta+=trailSpeed;
  theta2-=trailSpeed;
}
