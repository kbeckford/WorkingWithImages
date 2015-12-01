PImage mainImage;
PImage mask;

void setup() {
  mainImage=loadImage("nyc.png"); 
  mask=loadImage("london.jpg");

  //set size after initializing images
  size(1680, 1050);

  //mask the image
  mainImage.mask(mask);

  //display images from center
  imageMode(CENTER);
}

void draw() {
  background(0);
  image(mainImage, width/2, height/2);
}