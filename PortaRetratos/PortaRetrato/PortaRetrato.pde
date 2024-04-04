PImage img_urso; 
PImage img_macaco; 
PImage img_zebra; 
PImage img_onca; 

int opt; 

void setup(){
  size(600, 600); 
  
  img_urso = loadImage("urso.jpg");
  img_macaco = loadImage("macaco.jpg");
  img_zebra = loadImage("zebra.jpg");
  img_onca = loadImage("onça.jpg");
}
void draw(){
  image(img_urso, dinoX, dinoY, 50, 50);  //img x y w h
  
  switch(opt){
    case 1: 
      break; 
     case 2: 
      break; 
     case 3: 
      break; 
     case 4: 
      break; 
     default: 
      // return 
  }
}
void mousePressed(){
  if(mouseX < 100 && mouseY < 100) opt = 1; 
  if(mouseX < 100 && mouseY > height - 100) opt = 2; 
  if(mouseX > width - 100 && mouseY < 100) opt = 3; 
  if(mouseX < width - 100 && mouseY < height - 100) opt = 4; 
}
