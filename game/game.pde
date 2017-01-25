Orange o;
Apple a;
Player p;
float border=30;
boolean startUp=true;
int menu=0;
 PFont fontSplashpage;
 PFont buttonFont;
 PFont instructionsFont;
void setup()
{
size(700,600);
background(255);

//put param here-----
  o = new Orange(width-30,height/2-30,0,-1);
  a = new Apple(width-30,height/2+30,0,-1);
  p= new Player();

}


//ArrayList<Fruit> fruit = new ArrayList<Fruit>();
void mousePressed()
{
  if(mouseX>width/2 && mouseX<width/2+200)
  {
    if(mouseY>height/2&& mouseY<height/2+70)
    {
       menu=1;
    }
    //(width/2+20,height/2,200,70);
  }
 
}
void draw()
{
  background(255);
  //switch statement to switch between screens
  switch(menu)
  {
    case 0: 
    {
     loadingBar();
    break;
    }
    
    case 1:
    {
      splashScreen();
     
       o.display();
       a.display();
       p.display();
    }
   case 2: 
    {
      level1();
    }
  }
  
}

void splashScreen()
{
  //border for my screen
  strokeWeight(1);
 stroke(174,247,72);
 fill(126,160,141);
 rect(border*2,border*2,width-border*4,height-border*4);
 fill(0);

 //font -- survive
fontSplashpage = loadFont("Chalkduster-48.vlw");
textFont(fontSplashpage, 70);
text("Survive",width/2-130,height/2-100);

 //font -- survive
instructionsFont = loadFont("Phosphate-Inline-20.vlw");
textFont(instructionsFont, 20);
text(" * Collect the fruit",width/2-100,height/2+100);
text(" * Dodge the enemies",width/2-100,height/2+150);


//play button 
 fill(17,247,245);
ellipse(width/2+20,height/2,200,70);
fill(0);
//button font
buttonFont = loadFont("HannotateSC-W5-48.vlw");
textFont(buttonFont, 70);
textSize(40);
text("PLAY", width/2-30,height/2+15);
 
}
void level1()
{
    strokeWeight(1);
 stroke(211,17,98);
 fill(255,0,0);
 rect(border*2,border*2,width-border*4,height-border*4);
}

void loadingBar()
{
  fill(0);
  rect(0,0,width,height);
  stroke(255);
  fill(0);
  text("Loading Game",width/2-100,height/2-100);
  rect(width/2-150,height/2-50,300,40);
  rect(width/2-150,height/2-50,300,40);
  if(keyPressed)
  {
    if(keyCode == LEFT)
  {
    fill(0);
  }
  }
  
  
}