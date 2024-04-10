class Player{
  int playerWidth = 20; 
  int playerHeight = 20;
  
  int playerX = 0 + playerWidth*2; // posição inicial do player x
  int playerY = 900 - playerHeight*3; // posição inicial do player y
  int playerSpeed = 1; 
  
  Player(){
    
  }
  
  void update(){
    if(kd[0]) playerX -= playerSpeed; // decrementa a posição horizontal do player (A)
    if(kd[1]) playerY += playerSpeed; // incrementa a posição vertical do player (W)
    if(kd[2]) playerX += playerSpeed; // incrementa a posição horizontal do player (D)
    if(kd[3]) playerY -= playerSpeed; // decrementa a posição vertical do player (S)
    
    if(playerX < playerWidth/2) playerX = playerWidth/2; // parede esquerda
    if(playerX > width - playerWidth/2) playerX = width - playerWidth/2; // parede direta
    if(playerY < playerHeight/2) playerY = playerHeight/2; // parede superior 
    if(playerY > height - playerHeight/2) playerY = height - playerHeight/2; // parede inferior 
    
  }
  void render(){
    fill(30, 200, 30);
    circle(playerX, playerY, playerWidth);
  }
}
