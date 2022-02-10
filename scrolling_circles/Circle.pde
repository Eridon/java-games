class Circle
{
  int diam;
  int x;
  int y;
  int r;
  int g;
  int b;
  
  Circle()
  {
    x=(int)random(600);
    y=(int)random(600);
    diam=(int) random(MAXDIAM);
    r=(int) random(256);
    g=(int) random(256);
    b=(int) random(256);
  }

}
