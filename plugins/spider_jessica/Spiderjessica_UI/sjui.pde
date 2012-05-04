//Variables
int cloudSize = 400;
int[] coordinateArray = new int[4];
int[] n = 0;

void setup() {
  frameRate(25);
  size(400, 400);
  background(0);
  fill(255);
  stroke(255);
  lineCloud = new lineCloud();
}

void draw(){
      n++;
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
          n=1;
      }
      lineCloud.show(coordinateArray[0],coordinateArray[1], coordinateArray[2], coordinateArray[3], 155);
      
}

class lineCloud{

  int cX1,cY1,cX2,cY2, cColour;

  lineCloud(){
  }

  void show(cX1,cY1,cX2,cY2, cColour){
      line(cX1,cY1,cX2,cY2);
      fill(0,10);
      rect(0,0,cloudSize,cloudSize);
      stroke(cColour);
  }
}
