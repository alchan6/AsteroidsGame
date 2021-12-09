class Asteroid extends Floater{
  private double rotationSpeed;
  public Asteroid(){
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -15 + (int)(Math.random()*11)-5;
    yCorners[0] = -12 + (int)(Math.random()*11)-5;
    xCorners[1] = 11 + (int)(Math.random()*11)-5;
    yCorners[1] = -12 + (int)(Math.random()*11)-5;
    xCorners[2] = 17 + (int)(Math.random()*11)-5;
    yCorners[2] = 0 + (int)(Math.random()*11)-5;
    xCorners[3] = 10 + (int)(Math.random()*11)-5;
    yCorners[3] = 14 + (int)(Math.random()*11)-5;
    xCorners[4] = -15 + (int)(Math.random()*11)-5;
    yCorners[4] = 12 + (int)(Math.random()*11)-5;
    xCorners[5] = -9 + (int)(Math.random()*11)-5;
    yCorners[5] = 0 + (int)(Math.random()*11)-5;
    myColor = color(139,69,19);
    myCenterX = (int)(Math.random()*501);
    myCenterY = (int)(Math.random()*501);
    myXspeed = (int)(Math.random()*4)-2;
    myYspeed = (int)(Math.random()*4)-2;
    myPointDirection = 0;
    rotationSpeed = (int)(Math.random()*10)+1;
  }
  public void move(){
    super.move();
    turn(rotationSpeed);
  }
  public int getRotation(){
    return (int)rotationSpeed;
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY; 
  }
}
