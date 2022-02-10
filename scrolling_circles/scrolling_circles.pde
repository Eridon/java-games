final int MAXDIAM=100;
Circle [] Circles;
int NumCircles;

void setup()
{
  frameRate(80);
  size(600,600);
  NumCircles=100;
  Circles=new Circle[NumCircles];
  
  for (int i=0; i<NumCircles; i++)
  {
    Circles[i]=new Circle();
  }
}

void draw()
{
    background(0);
    for (int i=0; i<NumCircles; i++)
    {
      Circle c=Circles[i];
      stroke(c.r, c.g, c.b);
      fill(c.r, c.g, c.b);
      ellipse(c.x, c.y, c.diam, c.diam);
      Circles[i].y++;
    }
}
