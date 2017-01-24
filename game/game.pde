Orange o;
Apple a;

float border=30;
boolean startUp=true;
int menu=0;
 PFont fontSplashpage;
 PFont buttonFont;
 PFont instructionsFont;
void setup()
{
size(700,600);background(247,247,240);
  o = new Orange();
  a = new Apple();

}


ArrayList<Fruit> fruit = new ArrayList<Fruit>();
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
  background(17,247,161);
  //switch statement to switch between screens
  switch(menu)
  {
    case 0: 
    {
      splashScreen();
     
       o.display();
       a.display();
    break;
    }
   case 1: 
    {
      level1();
    }
  }
  
}

void splashScreen()
{
  //border for my screen
  strokeWeight(1);
 stroke(211,17,98);
 fill(17,247,245);
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