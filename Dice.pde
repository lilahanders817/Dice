void setup() {
  size(600,600);
  noLoop();
}

void draw() {
  background(255);
  
  int total = 0;
  
  
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      Die myDie = new Die(100 + i * 75, 100 + j * 75);
      myDie.roll();  
      myDie.show(); 
      total += myDie.value; 
    }
  }
  
 
  textSize(24);
  fill(0);
  text("Total: " + total, 20, 20);  
}
void mousePressed() {
  redraw();
}

class Die {
  int x, y;    
  int value;   

 
  Die(int x, int y) {
    this.x = x;
    this.y = y;
    this.value = 1;  
  }

  
  void roll() {

  value = (int)(Math.random()*6)+1;
  }



  void show() {
    
    fill(255,255,0);
    rect(x, y, 50, 50); 

    
    fill(0);  
    noStroke(); 
    float dotSize = 10; 
    float spacing = 15; 
    

    float centerX = x + 25;
    float centerY = y + 25;
    
    if (value == 1) {
      ellipse(centerX, centerY, dotSize, dotSize);
    } else if (value == 2) {
      ellipse(centerX - spacing, centerY - spacing, dotSize, dotSize);
      ellipse(centerX + spacing, centerY + spacing, dotSize, dotSize);
    } else if (value == 3) {
      ellipse(centerX - spacing, centerY - spacing, dotSize, dotSize);
      ellipse(centerX, centerY, dotSize, dotSize);
      ellipse(centerX + spacing, centerY + spacing, dotSize, dotSize);
    } else if (value == 4) {
      ellipse(centerX - spacing, centerY - spacing, dotSize, dotSize);
      ellipse(centerX + spacing, centerY - spacing, dotSize, dotSize);
      ellipse(centerX - spacing, centerY + spacing, dotSize, dotSize);
      ellipse(centerX + spacing, centerY + spacing, dotSize, dotSize);
    } else if (value == 5) {
      ellipse(centerX - spacing, centerY - spacing, dotSize, dotSize);
      ellipse(centerX + spacing, centerY - spacing, dotSize, dotSize);
      ellipse(centerX, centerY, dotSize, dotSize);
      ellipse(centerX - spacing, centerY + spacing, dotSize, dotSize);
      ellipse(centerX + spacing, centerY + spacing, dotSize, dotSize);
    } else if (value == 6) {
      ellipse(centerX - spacing, centerY - spacing, dotSize, dotSize);
      ellipse(centerX + spacing, centerY - spacing, dotSize, dotSize);
      ellipse(centerX - spacing, centerY, dotSize, dotSize);
      ellipse(centerX + spacing, centerY, dotSize, dotSize);
      ellipse(centerX - spacing, centerY + spacing, dotSize, dotSize);
      ellipse(centerX + spacing, centerY + spacing, dotSize, dotSize);
    }
  }
}
