PImage main,mask;

void setup(){
  //delcare the images
  main=loadImage("paris.jpg");
  mask=loadImage("nyc.jpg");
  
  //set size after itializing images
  size(800,600);
  
  //mask the image
  main.mask(mask);
  
  //display image from center
  imageMode(CENTER); 
}

void draw(){
  background(0);
  image(main,width/2,height/2);
}