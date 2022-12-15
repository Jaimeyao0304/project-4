

PImage img; 

void setup() {
  size(1920, 1080);
  img = loadImage("4.png");
  img.resize(1920, 1080);
}

void draw() {
  background(255);
  fill(10,random(0,10),random(0,10));
  noStroke();
  float tiles = mouseX/4;
  float tileSize = width/tiles;
  translate(tileSize/2,tileSize/2);
  for (int x = 0; x < tiles; x++) {
    for (int y = 0; y < tiles; y++) {
      color c = img.get(int(x*tileSize),int(y*tileSize));
      float size = map(brightness(c),0,255,tileSize,0);    
      ellipse(x*tileSize, y*tileSize, size, size);
    }
  }
}
