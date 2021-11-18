Spaceship bob = new Spaceship();
Star [] sue;
public void setup() 
{
  size(500,500);
  background(0);
  sue = new Star[100];
  for(int i = 0; i < sue.length; i++){
    sue[i] = new Star();
  }
  
}
public void draw() 
{
  background(0);
  for(int i = 0; i < sue.length; i++){
  sue[i].show();
  }
  bob.show();
  bob.move();
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
    if(key == ' '){
      bob.hyperspace();
    }
  }
}
