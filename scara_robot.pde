float baseH =20;
float baseW = 40;
float armL1 = 100;
float armL2 = 100;
float armL3 = 60;
float armL4 = 40;
float armL5 = 35;
float armL6 = 30;
float armW1 = 25;
float armW2 = 20;
float armW3 = 15;
float armW4 = 5;
float armW5 = 4;
float armW6a= 3;
float armW6b= 10;
float armW45= 10;
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float angle4 = 0;
float angle5 = 0;
float dif = 1.0;


void setup(){
  size(1500, 1000, P3D);
  //background(255);
   camera(100, 300, 150, 0, 0, 0, 0, 0, -1);
 
  
  noStroke();  
}

void draw(){
  
  background(255);
  
  if(keyPressed){
    if(key == 'a'){
     angle1 = angle1 + dif;
    }
    if(key == 'A'){
      angle1 = angle1 - dif;
    }
    if(key == 'b'){
      angle2 = angle2 + dif;
    }
    if(key == 'B'){
      angle2 = angle2 - dif;
    }
    if(key == 'c'){
      angle3 = angle3 + dif;
    }
    if(key == 'C'){
      angle3 = angle3 - dif;
    }
     if(key == 'd'){
      angle4 = angle4 + dif;
    }
    if(key == 'D'){
      angle4 = angle4 - dif;
    }  
    if(key == 'e'){
      angle5 = angle5 + dif;
    }
    if(key == 'E'){
      angle5 = angle5 - dif;
    }
  }
  
//table
translate(0,0,-5*baseH);
  fill(105);
  box(baseW,baseW,baseH);
  
  //1st limk
  rotateZ(radians(angle1));
  translate(0,0,armL1/2);
  fill(255,255,0);
  box(armW1,armW1,armL1);
  
  //2nd link
  translate(0,0,2*armW2);
  rotateY(radians(angle2));
  translate(-armW1/2+armL2/2,0,0);
  fill(255,255,0);
  box(armL2,armW2,armW2);
  
  //3rd link
  translate(armL2/2-armW3/2,0,-armW2/2+armW2/2);
  rotateY(radians(angle3));
  translate(0,0,+armL3/2-armW2/2);
  fill(255,255,0);
  box(armW3,armW3,armL3);
  
  //4th link
  translate(0,0,armL3/2);
  rotateX(radians(-angle4));
  translate(0,-armL4/2,-armW45/2);
  fill(255,0,0);
  box(armW4,armL4,armW45);
  
  //5th link
  translate(0,armW45/2-armL4/2,0);
 rotateX(radians(-angle4));
 translate(0,-armL5/2+armW45/2,0);
 box(armW5,armL5,armW45);
 
 //6th link
  translate(0,-armL5/2+armW6b/2,0);
 rotateX(radians(-angle4));
 translate(0,-armL6/2+armW6b/2,0);
 box(armW6a,armL6,armW6b);
 
 }
