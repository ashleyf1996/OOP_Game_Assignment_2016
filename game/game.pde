Orange o;
Apple a;
Player p;
float border=30;
boolean startUp=true;
int menu=0;
 PFont fontSplashpage;
 PFont buttonFont;
 PFont instructionsFont;
 float x=0;
float y=1.5;
void setup()
{
size(700,600);
background(0);

//put param here-----
  for(int i=0; i< 5; i++)
  {
    o = new Orange(width-30,height/2-30,0,-1);
    fruit.add(o);
  }  
    
  a = new Apple(width-30,height/2+30,0,-1);
  p= new Player();

}

ArrayList<Fruit> fruit = new ArrayList<Fruit>();
void mousePressed()
{
  if(mouseX>width/2 && mouseX<width/2+200)
  {
    if(mouseY>height/2&& mouseY<height/2+70)
    {
       menu=2;
    }
    //(width/2+20,height/2,200,70);
  }
 
}
void draw()
{
  
  //switch statement to switch between screens
  switch(menu)
  {
    case 0: 
    {
    loadingBar();
  
    } 
    break;
    
    case 1:
    {
      splashScreen();
     
       o.display();
       a.display();
       p.display();
    }
    break;
   case 2: 
    {
      level1();
      
        for(int i=0; i< 5; i++)
  {
    fruit.get(i).moving = false;
  }  
  
    
   for(int i=0; i< 5; i++)
  {
      fruit.get(i).display();
 
    // o.display();
  }  
    
    }
    break;
  }
  
}

void splashScreen()
{
  //border for my screen
  background(255);
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
 fill(255,255,0);
 rect(0,0,width,height);
 fill(255,0,255);
 rect(border*2,border*2,width-border*4,height-border*4);
}

void loadingBar()
{
  //background(0);
  textSize(20);
  text("Loading . . .", width/2-30,height/2+40);
  noFill();

 rect(width/2+150,height/2-50,350,100);

  fill(255,0,0);
  noStroke();
rect(width/2-150,height/2-50,x,50);
if(x==300)
{
  x= x-x;
}
x=x+y;
 
 if(x==300)
 {
  menu=1; 
   
 }
  
}