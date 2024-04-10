class Enemy{
  float x, y, speed, speed_x, speed_y, s, x_correction, size_x, size_y; 
  
  Enemy(){
    x = width/2; 
    y = height/2-150; 
    
    speed = .5; 
    s = 0; 
    x_correction = 0; 
    
    size_x = 100;
    size_y = 20; 
    
    speed_x = 0; 
    speed_y = 0; 
  }
  void update(){
    speed_y = speed; 
    speed_x = 0; 
    s += 0.005; 
    x_correction += 0.1; 
    
    y += speed_y; 
    x += speed_x; 
  }
  void display(){
    pushMatrix();
    translate(x, y); 
    scale(s);
    stroke(255); // cor do contorno 
    noFill(); // sem preenchimento 
    line(0, -10, 10, 10); // linha 
    line(10, 10, 0, 5); // linha 
    line(0, 5, -10, 10); // linha 
    line(-10, 10, 0, -10); // linha 
    popMatrix();
  }
}
