Bacteria[] hao;
void setup()   
 {     
   size(800,800);
   hao = new Bacteria[500];
   for(int i = 0; i < hao.length; i++){
     hao[i] = new Bacteria();
   }
 }   
 void draw()   
 {    
   background(0);
   for(int i = 0; i < hao.length; i++){
     hao[i].show();
     hao[i].walk();
   }
 }  
 class Bacteria    
 {     
   int myX, myY;
   Bacteria(){
     myX = myY = 400;
   }
   void walk(){
     myX = myX + (int)(Math.random()*9)-4;
     myY = myY + (int)(Math.random()*9)-4;
   }
   void show(){
     fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
     ellipse(myX,myY,10,10);
   }
 }    
 
 void mousePressed(){
   
  for(int i = 0; i < hao.length; i++){
    hao[i] = new Bacteria();
  }
   
}
