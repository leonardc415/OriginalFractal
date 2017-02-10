public void setup()
{
   size(500, 500);
}
public void draw()
{
  custFract(20, 20, 500);
}
public void custFract(int x, int y, int len)
{
 if(len <= 50)
   {
     ellipse(x, y, len, len);
   }
  else
   {
    fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    custFract(x+(len/4), y, len/2); //top
    fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    custFract(x+(len/4), y+(len/2), len/2); //bottom
    fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    custFract(x, y+(len/4), len/2);//left
    fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    custFract(x+len/2, y+(len/4), len/2);//right
   }
}
