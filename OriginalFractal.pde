public void setup()
{
   size(500, 500);
}
public void draw()
{
  custFract(0, 0, 500);
}
public void custFract(int x, int y, int len)
{
 if(len <= 30)
   {
     rect(x, y, len, len);
   }
  else
   {
    fill((int) (Math.random()*255), (int) (Math.random()*255), (int) (Math.random()*255));
    custFract(x, y, len/2);  //top left
    fill((int) (Math.random()*255), (int) (Math.random()*255), (int) (Math.random()*255));
    custFract(x+(len/2), y+(len/2), len/2);  //bottom right
    fill(255);
    custFract(x, y+(len/2), len/2);//bottom left
    fill(255);
    custFract(x+(len/2), y, len/2);//top right
   }
}
