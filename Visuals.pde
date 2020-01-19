class Visuals{
  //////////////////////////////////////
 /////   V=- YOUR CODE HERE  -=V  /////
//////////////////////////////////////

  // this is where the sound spectrum data is stored
  public float[] bands;
  // how many values are in it
  public int numBands;
  
  Star[] stars= new Star[600];  // setting how many stars 
  float speed;   //setting the speed in here
                 //so i can use the sound to change the speed
  
  void setup(){
    
    // create the stars
    for (int i=0;i<stars.length;i++){
    stars[i] = new Star();
    }
  }
  
  void draw(){
    background(0);
    //noStroke();
    //fill(255);
    
    //float r = bands[8]*width;
    //ellipse(width/2,height/2,r,r);
    float speed=map(bands[8]*width,0,1000,5,80);
    
    //if (speed > 80)
    // {
    //   speed=80;
    // }
    
    // test the figure of the sound
    println(bands[8]*width);
    //speed=map(mouseX,0,width,0,50);
    background(0);
    // call the stars
    translate(width/2,height/2);
    for(int i =0;i<stars.length;i++){
      stars[i].update(speed);
      stars[i].show();
    }
  }
  
  
  
  
  
  
  
  
  
  
    /////////////////////
   // CLASS CONSTRUCTOR
  // do not delete.
  Visuals(int _numBands){
    numBands = _numBands;
    bands = new float[numBands];
  }
}
