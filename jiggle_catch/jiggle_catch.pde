Rectangle [] rects;
final int numRects=50;

void setup()
{
  size(500,500);
  rects=new Rectangle[numRects];
  for (int i=0; i<numRects; i++)
    rects[i]=new Rectangle();
}

void draw()
{
  background(0);
  for (int i=0; i<numRects; i++)
  {
    rects[i].draw();
    rects[i].jiggle();
  }
}

void mouseClicked()
{
  for (int i=0; i<numRects; i++)
  {
    if (rects[i].PointInside(mouseX,mouseY))
    {
      rects[i].live=false;
    }
  }
}
