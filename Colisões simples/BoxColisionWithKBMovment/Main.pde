float x1, x2, y1, y2, l1, h1, l2, h2, distanciaMinima; 

int col; 

void setup(){
  size(500,500); 
  
  x1 = 100; 
  y1 = 100; 
  x2 = 400; 
  y2 = 400; 
  
  l1 = 50; 
  l2 = 50;
  h1 = 50;
  h2 = 50; 
  
  distanciaMinima = (((l1/2)+(h1/2))/2 + ((l2/2)+(h2/2))/2);
}

void draw(){
  background(0); 
  
  stroke(255); 
  noFill(); 
  rect(x1, y1, l1, h1); 
  
  rect(x2, y2, l2, h2); 
  
  line(x1+(l1/2), y1+(h1/2), x2+(l2/2), y2+(h2/2)); 
  
  if(dist(x1+(l1/2), y1+(h1/2), x2+(l2/2), y2+(h2/2)) <= distanciaMinima){
    println("colidiu!" + col);
    col++; 
  }
  
  println(dist(x1+(l1/2), y1+(h1/2), x2+(l2/2), y2+(h2/2))); 
}

void keyPressed() { 
    switch(keyCode){
      case 87: // W
        y1 -= 5; 
        break; 
      case 65: // A
        x1 -= 5; 
        break; 
      case 83: // S
        y1 += 5; 
        break;
      case 68: // D
        x1 += 5; 
        break; 
    }
}
