public class Vector{
  float x, y, z; 
  
  
  
  
  // CONSTRUTORES 
  public Vector(){}
  public Vector(float x, float y){
    this.x = x; 
    this.y = y; 
   
  }
  public Vector(float x, float y, float z){
    this.x = x; 
    this.y = y; 
    this.z = z; 
  }
  
  // SETAGEM OU SUBSTITUIÇÃO DOS VALORES  
  public void set(float x){
    this.x = x; 
  }
  public void set(float x, float y){ // SOBRECARGA
    this.x = x; 
    this.y = y; 
  }
  public void set(float x, float y, float z){ // SOBRECARGA
    this.x = x; 
    this.y = y; 
    this.z = z; 
  }
  
  public void desenha(float x, float y, color coloring){
    stroke(coloring); 
    line(x, y, x+this.x, y+this.y);
  }
  
  // MAGNITUDE
  public float mag(){
    return sqrt(this.x*this.x + this.y+this.y); 
  }
  
  // ADIÇÃO 
  public void add(Vector v){
    this.x += v.x; 
    this.y += v.y; 
  }
  public void add(Vector v1, Vector v2){
    this.x += v1.x + v2.x; 
    this.y += v1.y + v2.y; 
  }
  public void add(Vector v1, Vector v2, Vector v3){
    this.x += v1.x + v2.x + v3.x; 
    this.y += v1.y + v2.y + v3.y; 
  }
  
  // SUBTRAÇÃO 
  public void sub(Vector v){
    this.x -= v.x; 
    this.y -= v.y; 
  }
  
  // MULTIPLICAÇÃO
  public void mult(Vector v){
    this.x *= v.x; 
    this.y *= v.y; 
  }
  
  public void mult(float a){
    this.x *= a; 
    this.y *= a; 
  }
  
  
}
