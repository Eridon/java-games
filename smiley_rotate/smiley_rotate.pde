int smileyX;
int smileyY;
int offsetX;
int offsetY;
float rotation;
PImage img;

void setup()
{
  size(500,500);
  smileyX=200;
  smileyY=50;
  offsetX=1;
  offsetY=1;
  rotation=0.0f;
  frameRate(100);
  img = loadImage("smiley.jpg");
  img.resize(50,0);
  imageMode(CENTER);
}

void draw()
{
  // clear the background
  background(255);
  
  // move the circle
  smileyX=smileyX+offsetX;
  smileyY=smileyY+offsetY;
  
  // detect edges
  
  // left-right
  if ((smileyX > 450) || (smileyX < 50))
    offsetX=-offsetX;
  // top-bottom
  else if ((smileyY > 450) || (smileyY < 50))
    offsetY=-offsetY;
    
  // draw the smiley
  translate(smileyX,smileyY);
  rotate(rotation);
  rotation+=0.05;
  image(img,0,0);
}
