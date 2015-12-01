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
  //set background
  background(0);
  //display the image
  image(main,width/2,height/2);
  
  //define variable
  int diam=50;
  int x=mouseX;
  int y=mouseY;
  
  //create an ellipse to create a color picker
  fill(main.get(x,y));
  //noStroke();
  ellipse(mouseX,mouseY,diam,diam);
  
  //if the mouse if pressed the image is blurred
  if(mousePressed){
   image(main,width/2,height/2);
    filter(BLUR,6); 
  }
}
  

  