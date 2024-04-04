PImage img_urso; 
PImage img_macaco; 
PImage img_zebra; 
PImage img_onca; 

float img_size; 
float img_center_size; 

int opt; 
float R, G, B; 


void setup(){
  size(600, 600); 
  
  img_urso = loadImage("urso.jpg");
  img_macaco = loadImage("macaco.jpg");
  img_zebra = loadImage("zebra.jpg");
  img_onca = loadImage("onça.jpg");
  
  img_size = 150;
  img_center_size = 300; 
  
  R = 255; 
  G = 255; 
  B = 255; 
}
void draw(){
  background(R, G, B); 
  //System.out.println(mouseX + " - " + mouseY); 
  image(img_urso, 0, 0, img_size, img_size); 
  image(img_macaco, width-img_size, 0, img_size, img_size); 
  image(img_zebra, 0, height-img_size, img_size, img_size); 
  image(img_onca, width-img_size, height-img_size, img_size, img_size); 
  
  if(opt == 1){        
    image(img_urso, width/2-img_size, height/2-img_size, img_center_size, img_center_size); 
  }
  if(opt == 2){    
    image(img_macaco, width/2-img_size, height/2-img_size, img_center_size, img_center_size); 
  }
  if(opt == 3){           
    image(img_zebra, width/2-img_size, height/2-img_size, img_center_size, img_center_size); 
  }
  if(opt == 4){    
    image(img_onca, width/2-img_size, height/2-img_size, img_center_size, img_center_size);
  }
}
void mouseReleased(){
  if((mouseX < img_size) && (mouseY < img_size)) opt = 1; RcG(); 
  if((mouseX > width - img_size) && (mouseY < img_size)) opt = 2; RcG();  
  if((mouseX < img_size) && (mouseY > height - img_size)) opt = 3; RcG(); 
  if((mouseX > width - img_size) && (mouseY > height - img_size)) opt = 4; RcG();  
}

void RcG(){ // ramdom color generator; 
  R = random(255); 
  G = random(255); 
  B = random(255); 
}
