// Nimim audio bible 
import ddf.minim.*; 

Minim minim; 
AudioPlayer player; 

//void setup(){
  //minim = new Minim(this); 
  //player = minim.loadFile("file.mp3"); 
  //player.loop(); 
  // player.play(); 
  // player.rewind(); 
//}



int x, y, speed; 

void setup(){
  size(300,300); 
  x = 40; 
  y = height-40; 
  speed = 5; 
}

void draw(){
  background(0); 
  fill(255); 
  circle(x,y,20); 
  
  if(x < 11){
    x = 11; 
  }
  if(x > width-1){
    x = width-2; 
  }
  if(y < 10){
    y = 11; 
  }
  if(y > height-1){
    y = height-2; 
  }
  
}
void keyPressed(){
  if (key == CODED) {
    if(keyCode  == LEFT && (x > 10 && x < width)){
      System.out.println("LEFT"); 
      x -= speed; 
    }
    if(keyCode  == RIGHT && (x > 10 && x < width)){
      System.out.println("RIGHT"); 
      x += speed; 
    }
    if(keyCode  == UP && (y > 10 && y < height)){
      System.out.println("UP"); 
      y -= speed; 
    }
    if(keyCode  == DOWN && (y > 10 && y < height)){
      System.out.println("DOWN"); 
      y += speed; 
    }
  }
    //System.out.println("Mouse pressed " + x + " times"); 
    //x++; 
    //windowResize(width+(x*5), height+(x*5));
  
}
//void mouseReleased(){
  //if((mouseX < 100 && mouseX > 0 && mouseY > 200 && mouseY < 300) && mouseButton == LEFT){
    //System.out.println("Mouse released " + y + " times"); 
    //y++; 
  //}
  
//}
