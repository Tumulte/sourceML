//variables
array[] coordinates_array = [];
int h = 0;
void setup() 
{
  size(screen.width, screen.height);
  frameRate(1); 
  stroke(200);
  noFill()
  strokeWeight(0.5);
  
}

function linecloud(){
  int[] coordinates  = {random(0,500), random(0,500),random(0,500), random(0,500)};
  coordinates_array.push(coordinates);
  return coordinates
}

void draw(){
  linecloud();
  background(0);
  rect(100,100,400,400);
  for(i=0; i<coordinates_array.length; i++) {
    if(i==0){
       line(coordinates_array[i][0], coordinates_array[i][1],coordinates_array[i][2], coordinates_array[i][3]);
    }
    else{
       h=i-1;
       line(coordinates_array[h][2], coordinates_array[h][3],coordinates_array[i][0], coordinates_array[i][1]);
    }
  }
}
