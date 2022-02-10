int circleX;
int circleY;

final int WIDTH=500;
final int HEIGHT=500;
final int BALLBORDER=3;
final int BALLDIAM=45;
final int STARTX=50;
final int STARTY=50;

void settings()
{
  size(WIDTH,HEIGHT);
}

void setup()
{
  fill(127,0,255);
  stroke(255,255,255);
  strokeWeight(BALLBORDER);
  circleX=STARTX;
  circleY=STARTY;
}

void draw()
{
  if (circleX<WIDTH)
  {
    ellipse(circleX,circleY,BALLDIAM,BALLDIAM);
    circleX=circleX+BALLDIAM;
    circleY=circleY+BALLDIAM;
  }
}
