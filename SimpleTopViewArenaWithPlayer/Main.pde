int[] ks = {'a', 's', 'd', 'w'};
boolean[] kd = {false, false, false, false};

Player player_oo; 

void setup()
{
  size(900, 900);
  //fullScreen();
  
  player_oo = new Player(); 
}

void draw()
{
  scenary(); 
  
 
  player_oo.update(); 
  player_oo.render(); 
  
  
  
  
}

void keyPressed()
{
  k(true);
}

void keyReleased()
{
  k(false);
}

void k(boolean b)
{
  for(int i = 0; i < ks.length; i ++)
  {
    if(ks[i] == key || ks[i] == keyCode) kd[i] = b;
  }
}

void scenary(){
  background(150, 80, 10);
  
  stroke(0, 0, 0, 120); // 
  int lineFrequency = 100;
  for(int i = 1; i < height/lineFrequency;  i ++) // paredes internas provisórias
  {
    line(i*lineFrequency, 0, i*lineFrequency, height);
    line(0, i*lineFrequency, width, i*lineFrequency);
  }
  stroke(0, 0, 0, 255);  
}
