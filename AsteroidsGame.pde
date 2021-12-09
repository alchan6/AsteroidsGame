Spaceship bob = new Spaceship();
Star [] sue;
ArrayList <Asteroid> sal = new ArrayList <Asteroid>();
ArrayList <Bullet> shots = new ArrayList <Bullet>();
public void setup() 
{
  size(500,500);
  background(0);
  sue = new Star[100];
  for(int i = 0; i < sue.length; i++){
    sue[i] = new Star();
  }
  for(int i = 0; i < 10; i++){
    sal.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < sue.length; i++){
    sue[i].show();
  }
  for(int i = 0; i < sal.size(); i++){
    sal.get(i).show();
    sal.get(i).move();
    float d = dist((float)bob.getX(),(float)bob.getY(),(float)sal.get(i).getX(),(float)sal.get(i).getY());
    if(d<20){
      sal.remove(i);
    }
    
  }
  bob.show();
  bob.move();
  for(int i = 0; i < shots.size(); i++){
    shots.get(i).move();
    shots.get(i).show();
  }
  if(keyPressed){
    if(key == 'a'){
      bob.turn(-10);
    }
    if(key == 'd'){
      bob.turn(10);
    }
    if(key == 'w'){
      bob.accelerate(0.25);
    }
    if(key == 's'){
      bob.hyperspace();
    }
    if(key == ' '){
      shots.add(new Bullet(bob));
    }
  }
}
