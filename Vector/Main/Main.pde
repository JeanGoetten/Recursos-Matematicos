Vector v1, v2, v3; 
color branco, amarelo, ciano; 

void setup(){
  size(600,600); 
  noLoop(); background(0);
  
  v1 = new Vector(200, 200); 
  v2 = new Vector(60, 80); 
  v3 = new Vector(80, 120); 
  
  branco = 255; 
  amarelo = #ffff00; 
  ciano = #00ffff; 
}

void draw(){
  v1.desenha(0, 0, branco); 
  //v2.desenha(v1.x, v1.y); 
  //v1.add(v2); 
  //v1.mult(2); 
  //v1.add(v2, v3, v1); 
  //v1.desenha(0, 0, branco); 
  
  v2.desenha(v1.x, v1.y, ciano); 
  v2.add(v1); 
  v3.desenha(v2.x, v2.y, amarelo); 
}
