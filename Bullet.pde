class Bullet extends Floater{
  public Bullet(Spaceship bob){
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    myPointDirection = bob.getDirection();
    myXspeed = bob.getXspeed()*5;
    myYspeed = bob.getYspeed()*5;
    accelerate(0.6);
  }
  public void show(){
    noStroke();
    fill(255,0,0);
    ellipse((float)myCenterX, (float)myCenterY, 10, 2);
  }
  
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
