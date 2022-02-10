final int BUTTONSIZE=50;
final int BUTTONSX=5;
final int BUTTONSY=5;
boolean [][] ButtonState;

void setup()
{
  size(650,600);
  // create button state array
  ButtonState=new boolean[BUTTONSY][BUTTONSX];
  
  // set all buttons to "off" (true==on, false==off)
  for (int row=0; row<BUTTONSY; row++)
    for (int col=0; col<BUTTONSX; col++)
      ButtonState[row][col]=false;
}

void draw()
{
  // clear the background
  background(0);
  
  // for each button...
  for (int row=0; row<BUTTONSY; row++)
  {
    for (int col=0; col<BUTTONSX; col++)
    {
      if (ButtonState[row][col]==true) // if it's "on"
      {
        fill(0,255,0); // green
        stroke(0,255,0);
      }
      else // "off"
      {
        fill(255,0,0); // red
        stroke(255,0,0);
      }
      rect((col+1)*BUTTONSIZE*2, (row+1)*BUTTONSIZE*2, BUTTONSIZE, BUTTONSIZE); // draw button
    }
  }
}

void mouseClicked()
{
  // println("Mouse click at "+mouseX+", "+mouseY);
  
  // variable to store index of button that was pressed
  int whichx=-1;
  int whichy=-1;
  
   // for each button...
  for (int row=0; row<BUTTONSY; row++)
  {
    for (int col=0; col<BUTTONSX; col++)
    {
       // calculate x and y position of top-left of button
       int x=(col+1)*BUTTONSIZE*2;
       int y=(row+1)*BUTTONSIZE*2;
    
       // if the mouse pointer is "inside" this button's region
    if ((mouseX>=x && mouseX<=x+BUTTONSIZE) && (mouseY>=y && mouseY<=y+BUTTONSIZE))
      // set the "which" variable to this button
    {
      whichx=col;
      whichy=row;
    }
   }  
  }
  
  // if we detected a click inside one of the buttons...
  if (whichx != -1)
  {
    // flip that button's state
    ButtonState[whichy][whichx]=!ButtonState[whichy][whichx];
  }
}
