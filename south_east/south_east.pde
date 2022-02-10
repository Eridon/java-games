void setup()
{
  size(400,400);
}

void draw()
{
  background(0,0,255);
  
  if (mouseX > width/2 && mouseY > height/2)
  {
    fill(0,0,0);
    rect(width/2, height/2, width/2, height/2);
  }
}
