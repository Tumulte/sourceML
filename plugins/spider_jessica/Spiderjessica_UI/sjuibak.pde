//variables
//ArrayList<float[]> coordinates_array;
float[] coordinates_array = new float[50];

//main stroke color

void setup()
{
  //size(screen.width, screen.height);
  size(500,500);
  frameRate(25);
  stroke(200);
  noFill();
  strokeWeight(0.5);
  coordinates_array = new ArrayList<float[]>();
}
//line array creator
float[] linecloud(){
  float[] coordinates = new float[4];  
  int square_size = 500;
  coordinates[0] = random(0,square_size);
  coordinates[1] = random(0,square_size);
  coordinates[2] = random(0,square_size);
  coordinates[3] = random(0,square_size);
  coordinates_array.add(coordinates);
  return coordinates;
}

void draw(){
  linecloud();
  background(0);
  stroke(255);
  strokeWeight(5);
  int stroke_color = 255;
  for(int i=0; i<coordinates_array.size(); i++) {
    float[] coordinates = coordinates_array.get(i);
    int  h=i-1;
    if(h<0) continue;
    float[] coordinates_h = coordinates_array.get(h);
    //stroke_color = 255 - (5*coordinates_array.size()) + (5*i) + 5;
    stroke_color = 255 - 5*(coordinates_array.size() - i - 1);
    //stroke_color = 10*i;
    //text(coordinates_array.size() - 1 - i, 10, 10*i);
    //text(i - 1, 30, 10*i);
    text(coordinates_array.size(),10,10*i);
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
