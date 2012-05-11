//Variables
int cloudSize = 40;
int n = 0;
int colour = 100;
Object[] lineCloudArray = new Object[2];

void setup() {
  lineCloudArray[0] = new lineCloud(n,255);
  lineCloudArray[1] = new lineCloud(n,255);

  frameRate(25);
  size(800, 800);
  background(0);
  fill(255);
  stroke(255);
}

void draw(){
      n++;
      translate(222,200);
      lineCloudArray[0].lineDraw();
      translate(40,40);
      lineCloudArray[1].lineDraw();
}

class lineCloud{
    int cN,cColour;
    int[] coordinateArray = new int[4];
    lineCloud(n,colour){
        cN=n;
        cColour=colour;
    }
    void lineDraw(cN, cColour){
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
         stroke(colour);
         line(coordinateArray[0],coordinateArray[1], coordinateArray[2], coordinateArray[3]);
         fill(0,10);
         noStroke();
         rect(0,0,cloudSize,cloudSize);
    }
}
