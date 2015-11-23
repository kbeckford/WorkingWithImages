PImage mainImage;
PImage mask;

void draw() {
  mainImage=loadImage("nyc.jpg"); 
  mask=loadImage("london.jpg");

  //set size after initializing images
  size(1680, 1050);

  //mask the image
  mainImage.mask(mask);
  
  //display images from center
  imageMode(CENTER);
}

void setup() {
  background(0);
  image(mainImage, width/2, height/2);
}