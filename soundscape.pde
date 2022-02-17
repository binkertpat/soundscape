import processing.sound.*; 

SinOsc ton;
float freq;
int startstop = 1;
int click = 1;

void setup() {
  size(700, 400);
  background(255);
  ton = new SinOsc(this);
}

void draw() {
  if (startstop % 2!=0){
    ton.play();  
    }
  if (startstop % 2 == 0){
    ton.stop();  
    }
  if (click % 2 != 0){
    ton.amp(map(mouseX, 0, width, 0.0, 1.0)); 
    }
  if (click % 2 == 0){
    ton.pan(map(mouseX, 0, width, -1.0, 1.0)); 
    }
  freq = (mouseY + 200) * 2; 
  ton.freq(freq);
}

void keyPressed(){
  if (key == ' ') {
    startstop+=1;
  } 
}

void mousePressed(){
  click += 1; 
}
