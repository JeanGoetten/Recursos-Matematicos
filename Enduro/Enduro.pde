Player player; 
Enemy enemy; 

boolean A, D; 
int col; 

void setup(){
  size(900, 900);
  background(0);
  
  
  player = new Player(); 
  enemy = new Enemy(); 
  
  A = false; 
  D = false; 
}
void draw(){
  background(0); 
  Street(); 
  
  player.update();
  player.display(); 
  
  enemy.update(); 
  enemy.display(); 
  
  if(OnCollisionEnter(player.x_offset, player.y, enemy.x, enemy.y, player.size_x, enemy.size_x)){
    reset(); 
    col++; 
  }
  
}
public void Street(){
  stroke(126);
  line(0, height/3, width, height/3); // horizonte
  line(440, width/3, 0, height); // rua esquerda
  line(460, width/3, 900, height); // rua direita
  stroke(50);
  line(450, width/3, 150, height); // rota 1
  line(450, width/3, 450, height); // rota 2
  line(450, width/3, 750, height); // rota 3
}

void keyPressed() { 
    switch(keyCode){
      case 65: // A
        A = true; 
        break; 
      case 68: // D
        D = true; 
        break; 
    }
}
void keyReleased(){
  switch(keyCode){
      case 65: // A
        A = false; 
        break; 
      case 68: // D
        D = false; 
        break; 
    }
}

void reset(){
  println("Colidiu..." + col); 
  player = new Player(); 
  enemy = new Enemy(); 
  
  A = false; 
  D = false; 
}

boolean OnCollisionEnter(float x1, float y1, float x2, float y2, float s1, float s2){ // verifica colisão tendo como parâmetros x e y (coordenada canto superior esquerdo da img) de 2 objetos e seus s (raio)
    float distanciaMinima = (s1+s2)/2; // armazena a média do tamanho dos dois objetos como 'box collider'
    
    float distancia = dist(x1, y1, x2, y2); 
    //println(distancia); 
    
    // debug
    stroke(255, 0, 0);
    strokeWeight(1);
    noFill(); // sem preenchimento 
    //circle(x1, y1, s1); 
    //circle(x2, y2, s2); 
    
    // debug line 
    strokeWeight(1);
    stroke(255, 0, 0, 80); 
    line(x1, y1, x2, y2); // desenha uma linha entre os objetos (debug) - aspecto estético nessa versão do jogo 
    textSize(18); // define o tamanho do texto 
    fill(255); // define a cor do texto 

    if (distancia <= distanciaMinima) { // Verifica se a distância é menor ou igual à distância mínima para considerar uma colisão
        return true; // Colisão detectada
    } else {
        return false; // Não há colisão
    }
}
