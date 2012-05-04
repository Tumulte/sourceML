//Variables
int cloudSize = 400;
Object[] cloudArray = new Object[20];
int[] coordinateArray = new int[4];
int[] n = 0;

void setup() {
  frameRate(5);
  size(400, 400);
  background(0);
  fill(255);
  stroke(255);
  lineCloud = new lineCloud();
/*
  for(i=0; i<20 ; i++){
      if(i==0){
          coordinateArray[0] = random(0,cloudSize);
          coordinateArray[1] = random(0,cloudSize);
          coordinateArray[2] = random(0,cloudSize);
          coordinateArray[3] = random(0,cloudSize);
      }
      else if (i % 2 == 0){
          coordinateArray[0] = coordinateArray[2];
          coordinateArray[1] = coordinateArray[3];
          coordinateArray[2] = random(0,cloudSize);
          coordinateArray[3] = random(0,cloudSize);
      }
      else{
          coordinateArray[0] = coordinateArray[2];
          coordinateArray[1] = coordinateArray[3];
          coordinateArray[2] = random(0,cloudSize);
          coordinateArray[3] = random(0,cloudSize);
      }
      cloudArray[i] = lineCloud.show(coordinateArray[0],coordinateArray[1], coordinateArray[2], coordinateArray[3], 155);
  }
  */
}

void draw(){

   n++;
   if(n>19){
      n=0;
   }
      if(n==0){
          coordinateArray[0] = random(0,cloudSize);
          coordinateArray[1] = random(0,cloudSize);
          coordinateArray[2] = random(0,cloudSize);
          coordinateArray[3] = random(0,cloudSize);
      }
      else if (n % 2 == 0){
          coordinateArray[0] = coordinateArray[2];
          coordinateArray[1] = coordinateArray[3];
          coordinateArray[2] = random(0,cloudSize);
          coordinateArray[3] = random(0,cloudSize);
      }
      else{
          coordinateArray[0] = coordinateArray[2];
          coordinateArray[1] = coordinateArray[3];
          coordinateArray[2] = random(0,cloudSize);
          coordinateArray[3] = random(0,cloudSize);
      }
      cloudArray[n] = lineCloud.show(coordinateArray[0],coordinateArray[1], coordinateArray[2], coordinateArray[3], 155);
      
}

class lineCloud{

  int cX1,cY1,cX2,cY2, cColour;

  lineCloud(){
  }

  void show(cX1,cY1,cX2,cY2, cColour){
      line(cX1,cY1,cX2,cY2);
      stroke(cColour);
  }
}
