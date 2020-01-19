class Star{
 float x;
 float y;
 float z;
//float speed;
 
 //float lx;
 //float ly;
 float lz;
 // setting the location which generate the stars
 Star(){
    x = random(-width,width);
    y = random(-height,height);
    z = random(width);
    
 }
 // let the stars moving
 
 void update(float speed){
   z-=speed;      
   if(z<1){   
     z=width;
     x = random(-width,width);
     y = random(-height,height);
     lz = z;
     //lx = x;
     //ly = y;
   }
 
 }
 
 void show(){
   fill(255);
   noStroke();
   
   float sx=map(x/z,0,1,0,width);
   float sy=map(y/z,0,1,0,height);
   
   float r=map(z,0,width,16,0);
   //ellipse(sx,sy,r,r);
   
   float lx=map(x/lz,0,1,0,width);
   float ly=map(y/lz,0,1,0,height);
   
   //float lsx=map(x/z,0,1,0,width);
   //float lsy=map(y/z,0,1,0,height);
   lz=z;
   stroke(255);
   line(lx,ly,sx,sy);
   
   //lx=x;
   //ly=y;
 
 }
 
} 
