float s = 10;//s = snelheid naar links of rechts
float v = -2;//v = snelheid naar boven
float a = 0.4;
float x = 300;
float y = 525;
boolean [] keys = new boolean[128];
PImage plaatje;

void setup() {
  size(1000, 700);  
  plaatje = loadImage("Groen_Veld.jpg");
  size(1000, 700);
}

void draw() {
  noStroke();
  image(plaatje, 0, 0);
  //background(#8BD7FF);

 // fill(0);
 // rect(600, 400, 100, 50);//platform 1

  fill(#27FF28);
  rect(0, 600, 1000, 100);//gras


  fill(#FF0303);
  rect(x, y, 75, 75);//blok



  if (keyPressed) {
    if (key == 'a') {
      x -= s;
    }  
    if (key == 'd') {
      x += s;
    }
    if (key == 'w') {
      v = -10;
      y -= 1;
    }
    if (key == 's') {
      v = 10;
      y += 1;
    }
  }
  if (x >= 1100) {
    x = -100;
  }
  if (x <= -110) {
    x = 1075;
  }
  if (y > 525) {
    y = 525;
    v = 0; 
  }
  v += a;
  y += v;
}

void keyPressed() {
  keys[key] = true;
}

void keyReleased() {
  keys[key] = false;
}