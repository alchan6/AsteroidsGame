class Bullet extends Floater{
  public Bullet(Spaceship bob){
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    myPointDirection = bob.getDirection();
    myXspeed = bob.getXspeed();
    myYspeed = bob.getYspeed();
  }
  public void show(){
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
}
