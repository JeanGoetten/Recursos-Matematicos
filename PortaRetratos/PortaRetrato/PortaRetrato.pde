import ddf.minim.*; 

PImage img_urso; 
PImage img_macaco; 
PImage img_zebra; 
PImage img_onca; 

float img_size; 
float img_center_size; 

int opt; 
float R, G, B; 

Minim minim; 
ArrayList<AudioPlayer> sfx_animals = new ArrayList<>(); 

float h, m, s; 
String oClock; 

PFont font;

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
  
  minim = new Minim(this); 
  sfx_animals.add(minim.loadFile("bear.mp3")); 
  sfx_animals.add(minim.loadFile("monkey.mp3")); 
  sfx_animals.add(minim.loadFile("zebra.mp3")); 
  sfx_animals.add(minim.loadFile("jaguar.wav")); 
  sfx_animals.add(minim.loadFile("theme.mp3")); 
  sfx_animals.get(4).rewind(); 
  sfx_animals.get(4).loop(); 
  
  font = createFont("digital-7.ttf", 90);
   
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
  
  clock(); 
  
}
void mouseReleased(){
  if((mouseX < img_size) && (mouseY < img_size)) {
    opt = 1; 
    sfx_animals.get(0).rewind(); 
    sfx_animals.get(0).play(); 
  }
  if((mouseX > width - img_size) && (mouseY < img_size)) {
    opt = 2; 
    sfx_animals.get(1).rewind(); 
    sfx_animals.get(1).play(); 
  }
  if((mouseX < img_size) && (mouseY > height - img_size)) {
    opt = 3; 
    sfx_animals.get(2).rewind(); 
    sfx_animals.get(2).play(); 
  }
  if((mouseX > width - img_size) && (mouseY > height - img_size)) {
    opt = 4; 
    sfx_animals.get(3).rewind(); 
    sfx_animals.get(3).play();  
  }
  if(mouseX > img_size && mouseX < width - img_size && mouseY > img_size && mouseY < height - img_size){
    RcG(); 
  }
}

void RcG(){ // ramdom color generator; 
  R = random(255); 
  G = random(255); 
  B = random(255); 
}

void clock(){
  s = second();
  m = minute();
  h = hour();
  
  String zeroS = ""; 
  String zeroM = ""; 
  String zeroH = ""; 
  
  if(s < 10) zeroS = "0"; 
  else zeroS = ""; 
  if(m < 10) zeroM = "0"; 
  else zeroM = ""; 
  if(h < 10) zeroH = "0"; 
  else zeroH = ""; 
  
  oClock = zeroH+nf(h, 0, 0)+":"+zeroM+nf(m, 0, 0)+":"+zeroS+nf(s, 0, 0); 
  
  fill(0);
  textFont(font);
  text(oClock, width/2-140, height/2-200); 
}
