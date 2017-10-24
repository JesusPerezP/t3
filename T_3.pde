Figura t1;
Figura cu1;
Figura c1;
Figura p1;
Figura h1;
Figura he1;
Figura o1;

ArrayList <Figura> Figuras;

void setup(){
  
   size (600,600);
  
  t1 = new triangulo (10,20,10,10,10);
  cu1 = new cuadrado(10);
  c1 = new circulo(10,20);
  p1 = new pentagono(10,10);
  h1 = new hexagono(10,10);
  he1 = new heptagono(100,100);
  o1 = new octagono(100,200);
  
  Figuras = new ArrayList<Figura>();
  
  Figuras.add(t1);
  Figuras.add(cu1);
  Figuras.add(c1);
  Figuras.add(p1);
  Figuras.add(h1);
  Figuras.add(he1);
  Figuras.add(o1);
}

void draw(){
  
  println(t1.perimetro());
  println(cu1.perimetro());
  println(c1.perimetro());
  println(p1.perimetro());
  println(h1.perimetro());
  println(he1.perimetro());
  println(o1.perimetro());
  
  println(t1.area());
  println(cu1.area());
  println(c1.area());
  println(p1.area());
  println(h1.area());
  println(he1.area());
  println(o1.area());
 
  
  
  
  
  
   pushMatrix();
  translate(100, 50);
  polygon(0, 0, 40,3);  // Triangulo
  popMatrix();
  
  pushMatrix();
  translate(150, 100);
  polygon(0, 0, 40, 4);  // cuadrado
  popMatrix();
  
    pushMatrix();
  translate(200, 200);
  polygon(0, 0, 40,0);  // circulo
  popMatrix();
  
    pushMatrix();
  translate(250, 100);
  polygon(0, 0, 40,5);  // pentagono
  popMatrix();
  
   pushMatrix();
  translate(300, 200);
  polygon(0, 0, 40,6);  // hexagono
  popMatrix();

 pushMatrix();
  translate(350, 100);
  polygon(0, 0, 40,7);  // heptagono
  popMatrix();
  
   pushMatrix();
  translate(400, 200);
  polygon(0, 0, 40,8);  // octagono
  popMatrix();
}

interface Figura{

 float perimetro();
 float area();

}



class triangulo implements Figura{
int  b, h, l1, l2, l3;

  triangulo(int b_, int h_, int l1_, int l2_, int l3_){

  b = b_;
  h = h_;
  l1 = l1_;
  l2 = l2_;
  l3 = l3_;

  }

 float perimetro(){

  return l1 + l2 + l3;

 }

 float area(){

  return b*h/2;

 }
 
 


}
//______________________________________________________________________________________________________________________________________________________________________________________

class cuadrado implements Figura{

  float l;

  cuadrado(int l_){

  l = l_;

  }
  float perimetro(){
    return l*4;
 }

  float area(){
    return l*l; 
  }
  
}
//__________________________________________________________________________________________________________________________________________________________________________________________
class circulo implements Figura{

 float pi, r;
 circulo(float pi_, int r_){

 pi = pi_;

 r = r_;

 }
 float perimetro(){

  return 2*pi*r;
 }
 float area(){
  return pi*(r*r);
 }


}

//________________________________________________________________________________________________________________________________________________________________________________________
class pentagono implements Figura{

 float l, a;

 pentagono(float l_, float a_){
 l = l_;
 a = a_;
 }
 float perimetro(){
  return l*5;
 }

 float area(){
return ((l*5)*a)/2;

 }

}
//_______________________________________________________________________________________________________________________________________________________________________________________

  class hexagono implements Figura
{
  int l, a;
  hexagono (int l_, int a_)
  {
    l = l_;
    a = a_;
  }
  float perimetro ()
  {
    return l*6;
  }
  float area ()
  { 
   return 6*l*a/2;
  }
   
}


//________________________________________________________________________________________________________________________________________________________________________________________
class heptagono implements Figura
{
  float l, a;
  heptagono (float l_, float a_)
  {
    l = l_;
    a = a_;
  }
 float perimetro ()
  {
    return l*7;
  }
  float area ()
  { 
    return 7*l*a/2;
  }
 
}

//___________________________________________________________________________________________________________________________________________________________________________________________
class octagono implements Figura

{
  float l, a;
  octagono (float l_, float a_)
  {
    l = l_;
    a = a_;
  }
  float perimetro ()
  {
    return l*8;
  }
  float area ()
  { 
    return 8*l*a/2;
  }
 

}


  
//https://processing.org/examples/regularpolygon.html 
  void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
   
  }
  endShape(CLOSE);
}