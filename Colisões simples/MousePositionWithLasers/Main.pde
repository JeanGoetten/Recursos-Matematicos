float x2, y2, l1, h1, l2, h2, distanciaMinima; 

int col; 

void setup(){
  size(500,500); 
  
  x2 = 400; 
  y2 = 400; 
  
  l1 = 10; 
  l2 = 50;
  h1 = 10;
  h2 = 50; 
  
  distanciaMinima = ((l2/2)+(h2/2))/2;
}

void draw(){
  background(0); 
  
  stroke(255); 
  fill(255); 
  rect(mouseX-(l1/2), mouseY-(h1/2), l1, h1); 
  
  noFill(); 
  rect(x2, y2, l2, h2); 
  
  line(mouseX, mouseY, x2+(l2/2), y2+(h2/2)); 
  
  if(dist(mouseX, mouseY, x2+(l2/2), y2+(h2/2)) <= distanciaMinima){
    println("colidiu!" + col);
    col++; 
  }
  
  println(dist(mouseX+(l1/2), mouseY+(h1/2), x2+(l2/2), y2+(h2/2))); 
}
