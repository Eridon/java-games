class Rectangle
{
  int x;
  int y;
  int w;
  int h;
  int r;
  int g;
  int b;
  boolean live;

  Rectangle()
  {
    x=(int)random(width);
    y=(int)random(height);
    
    w=(int)random(40)+10;
    h=(int)random(40)+10;
    
    r=(int)random(240)+16;
    g=(int)random(240)+16;
    b=(int)random(240)+16;
    
    live=true;
  }
  
  void draw()
  {
    fill(0,0,0);
    if (live)
      fill(r,g,b);
    noStroke();
    rect(x,y,w,h);
  }
  
  boolean PointInside(int PX, int PY)
  {
    if ((PX>=x && PX<=x+w) && (PY>=y && PY<=y+h))
      return (true);
    else
      return (false);
  }
  
  void jiggle()
  {
    int xjig=(int)random(10)+1;
    int yjig=(int)random(10)+1;
    
    if ((int)random(2)==0)
    {
      x+=xjig;
      y+=yjig;
    }
    else
    {
      x-=xjig;
      y-=yjig;
    }
  }

}
