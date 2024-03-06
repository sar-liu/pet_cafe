PImage bg, end, hit, miss, last;
int point=0;
int treats=20;

import ddf.minim.*;
Minim minim;
AudioSample meow;
AudioSample drop;
//AudioPlayer theme; 

void setup(){
  size(1920,1080);
  PFont font;
  font=loadFont("GoudyStout-30.vlw");
  textFont(font,128);
  frameRate(2);
  minim = new Minim(this);
  meow = minim.loadSample("meow.mp3",512);
  drop = minim.loadSample("drop.wav",512);
  //theme = minim.loadFile("theme.mp3");
  //theme.loop();
  bg=loadImage("bg.png");
  end=loadImage("end.png");
  hit=loadImage("hit.png");
   miss=loadImage("miss.png");
    last=loadImage("last.png");
  
}
  
void draw(){
  background(bg);
  fill(#ffdbdf);
  textAlign(CENTER);
  textSize(50);
   text(point,840,130);
   text(treats,220,950);
   
}

void keyPressed(){
  if(key=='a'){
    drop.trigger();
    image(miss,680,230,533,485);
    point+=0;
    treats--;
    endCheck();
  }
   if(key=='s'){
     meow.trigger();
    image(hit,680,230,533,504);
    point+=10;
    treats--;
    endCheck();
  }
   if(key=='d'){
     meow.trigger();
      image(hit,680,230,533,504);
    point+=20;
    treats--;
    endCheck();
  }
   if(key=='f'){
     meow.trigger();
      image(hit,680,230,533,504);
    point+=20;
    treats--;
    endCheck();
  }
   if(key=='g'){
     meow.trigger();
      image(hit,680,230,533,504);
    point+=30;
    treats--;
    endCheck();
  }
   if(key=='h'){
     meow.trigger();
      image(hit,680,230,533,504);
    point+=30;
    treats--;
    endCheck();
  }
}

void endCheck(){
  if (treats==0){
    image(end,0,0);
    textSize(100);
    text(point,630,300);
    
     image(last,790,635,320,303);
    noLoop();
  }
}
