class Player{
  float x_offset, y, size_x, size_y; 
  float speed; 

  Player(){
    x_offset = width/2; // posição horizontal inicial 
    y = height/2 + 350; // posição vertical inicial 
    speed = 2; 
    
    size_x = 100;
    size_y = 50; 
  }

  void update(){
    if(A){
      x_offset -= speed;
    }
    if(D){
      x_offset += speed;
    }
    if(x_offset < 120){
      x_offset = 120;
    }
    if(x_offset > 780){
      x_offset = 780;
    }
    //println(x_offset); 
  }
  void display(){
    pushMatrix();
    translate(x_offset, y); // centraliza as coordenadas 
    scale(5); 
    stroke(255); // cor do contorno 
    noFill(); // sem preenchimento 
    line(0, -10, 10, 10); // linha 
    line(10, 10, 0, 5); // linha 
    line(0, 5, -10, 10); // linha 
    line(-10, 10, 0, -10); // linha 
    popMatrix();
  }
}
