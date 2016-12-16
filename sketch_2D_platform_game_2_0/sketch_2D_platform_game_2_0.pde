int l = 3; //levens
int l2 = 3; //levens2
float s = 10;//s = snelheid naar links of rechts
float s2 = 10;//s2 = snelheid naar links of rechts
float v = -2;//v = snelheid naar boven
float v2 = -2;//v2 = snelheid naar boven
float a = 0.4;
float x = 300;
float x2 = 450; 
float y = 525;
float y2 = 525;
boolean [] keys = new boolean[128];
boolean jumped = false;
PImage plaatje;
PImage plaatje2;
PImage plaatje3;

void setup() {
  size(1000, 700);
  plaatje = loadImage("Groen_Veld.jpg");
  plaatje2 = loadImage("face3.png");
  plaatje3 = loadImage("cute.jpg");
}

void draw() {
  noStroke();

  tint(255);
  image(plaatje, 0, 0);

  tint (255);
  image(plaatje3, x, y, 75, 74);

  tint (255,0,0);
  image(plaatje2, x2, y2, 75, 74);

  fill(0);
  textSize(32);
  text(l, 10, 30);
 text(l2, 970, 30);


  fill(0, 0, 0, 0);//?
  rect(x, y-1, 75, 75);//blok1
  fill(0, 0, 0, 0);//?
  rect(x2, y2-1, 75, 75);//blok2

  if (y<=0) {  //1
    x = 300;
    y= 525;
    l-=1;
  }
  
  if (y2<=0) {  //2
    x2 = 450;
    y2= 525;
    l2-=1;
  }
 /* if (l <= 0) {
    exit();
  }
*/
  if (keyPressed) {
    if (key == 'a') {
      x -= s;
     }  
    if (key == '4') {
      x2 -= s2;
    }  
    if (key == 'd') {
      x += s;
    }    if (key == '6') {
      x2 += s2;
    }
    if (key == 'w') {
      if (!jumped) {
        v = -10;
        y -= 1;
        jumped = true;
      }
    }
        if (key == '8') {
      if (!jumped) {
        v2 = -10;
        y2 -= 1;
        jumped = true;
      }
    }
    if (key == 's') { 
      v = 60;
      y += 1;
    }
        if (key == '5') { 
      v2 = 60;
      y2 += 1;
    }
  } else if (jumped) {
    jumped = false;
  }
  if (x >= 1050) {
    x = -50;
  }
    if (x2 >= 1050) {
    x2 = -50;
  }
  if (x <= -60) {
    x = 1025;
  }
    if (x2 <= -60) {
    x2 = 1025;
  }
  if (y > 525) {
    y = 525;
    v = 0;
  }
    if (y2 > 525) {
    y2 = 525;
    v2 = 0;
  }
  v += a; v2+= a;
  y += v; y2+= v2;
}
void keyPressed() {
  keys[key] = true;
}
void keyReleased() {
  keys[key] = false;
}