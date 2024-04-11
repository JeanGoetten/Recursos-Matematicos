import ddf.minim.*; 

Minim minim; 
ArrayList<AudioPlayer> notes = new ArrayList<>(); 

void setup(){
  minim = new Minim(this); 
  
  notes.add(minim.loadFile("c3.wav")); 
  notes.add(minim.loadFile("d3.wav")); 
  notes.add(minim.loadFile("e3.wav")); 
  notes.add(minim.loadFile("f3.wav")); 
  notes.add(minim.loadFile("g3.wav")); 
  notes.add(minim.loadFile("a3.wav")); 
  notes.add(minim.loadFile("b3.wav")); 
}

void draw(){
 
}

void keyPressed() { // códigos do teclado (println(keycode);) - shift = 16 space = 32 left = 37 up = 38 right = 39 down = 40 - registra quando o jogador aperta a tecla 
    switch(keyCode){
      case 87: // W
        notes.get(0).play(); // executa o audio específico 
        break; 
      case 65: // A
        notes.get(1).play(); // executa o audio específico 
        break; 
      case 83: // S
        notes.get(2).play(); // executa o audio específico 
        break;
      case 68: // D
        notes.get(3).play(); // executa o audio específico 
        break; 
    }
}

void keyReleased() { // registra quando o jogador solta a tecla 
    switch(keyCode){
      case 87: // W
        notes.get(0).rewind(); // rebobina o audio específico 
        break; 
      case 65: // A
        notes.get(1).rewind(); // rebobina o audio específico 
        break; 
      case 83: // S
        notes.get(2).rewind(); // rebobina o audio específico 
        break;
      case 68: // D
        notes.get(3).rewind(); // rebobina o audio específico 
        break; 
    }
} 
