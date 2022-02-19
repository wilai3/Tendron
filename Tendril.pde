class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;

  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    //your code here
    myNumSegments = len;
    myAngle = theta;
    myX = x;
    myY = y;
  }
  public void show()
  {
    //your code here
    float startX = myX;
    float startY = myY;
    float endX = startX;
    float endY = startY;
    for (int i = 0; i < myNumSegments; i++) {
      myAngle = myAngle + (Math.random()*0.4-0.2);
      endX = startX + cos((float)myAngle) * SEG_LENGTH;
      endY = startY + sin((float)myAngle) * SEG_LENGTH;
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
    }
    if (myNumSegments >= 3) {
      stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
      new Cluster (myNumSegments/3, (int)endX, (int)endY);
    }
  }
}
