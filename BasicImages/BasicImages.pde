//*****************************
//got an image? go to sketch --> add file --> it will create a data folder within the code folder
//****************************

PImage sombrero;
PImage beanie;

Float scale;

void setup(){
  size(800,600);
  //declare the image
  sombrero=loadImage("hedgehog with a sombrero.jpg");
  beanie=loadImage("hedgehog with a beanie.jpg");
}

void draw (){
  //background(255);
  scale= random(.1,.5);
  //last two variables control width and height
  image(sombrero,random(width),random(height),sombrero.width*scale,sombrero.height*scale);
  image(beanie,random(width),random(height),beanie.width*scale,beanie.height*scale);
  
}