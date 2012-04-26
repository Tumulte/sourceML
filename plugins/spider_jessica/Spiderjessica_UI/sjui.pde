//variables
ArrayList<float[]> coordinates_array;
int h = 0;

//main stroke color
int stroke_color = 255;
void setup() 
{
  //size(screen.width, screen.height);
  size(500,500);
  frameRate(5); 
  stroke(200);
  noFill();
  strokeWeight(0.5);
  coordinates_array = new ArrayList<float[]>();
}

//line array creator
float[] linecloud(){
  float[] coordinates  = {random(0,500), random(0,500),random(0,500), random(0,500)};
  coordinates_array.add(coordinates);
  return coordinates;
}

void draw(){
  linecloud();
  background(0);
  stroke(255);
  for(int i=0; i<coordinates_array.size(); i++) {
    float[] coordinates = coordinates_array.get(i);

    h=i-1;
    if(h<0) continue;
    float[] coordinates_h = coordinates_array.get(h);

    stroke_color -= i;
    if(stroke_color < 0){
        stroke_color = 0;
    }
    stroke(stroke_color);
    if(i==0){
       line(coordinates[0], coordinates[1], coordinates[2], coordinates[3]);
    }
    else if (i % 2 == 0){
       line(coordinates_h[2], coordinates_h[3], coordinates[0], coordinates[1]);
    }
    else{
       line(coordinates_h[0], coordinates_h[1], coordinates[2], coordinates[3]);
    }
  }
}
