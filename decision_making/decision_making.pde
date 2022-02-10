void setup()
{
  size(400,400);
}

void draw()
{
  if (mouseX > width * 0.66)
  {
    background(0,0,255);
  }
  else if (mouseX < width * 0.33)
  {
    background(255,0,0);
  }
  else
  {
    background(255,204,0);
  }
}
