Orange o;
Apple a;
Strawberry s;
Player p;
Enemy e;
Enemy e1;
float border=30;
boolean startUp=true;
int menu=0;
 PFont fontSplashpage;
 PFont buttonFont;
 PFont instructionsFont;
 float x=0;
float y=1.5;
int score=0;

boolean checkKey(int k)
{
  if (keys.length >= k) 
  {
    return keys[k] || keys[Character.toUpperCase(k)];  
  }
  return false;
}
void setup()
{
size(700,600);
background(0);

//put param here-----
  for(int i=0; i< 3; i++)
  {
    o = new Orange(width-30,height/2-30,0,-1);
    fruit.add(o);
  }  
  
   for(int i=4; i< 6; i++)
  {
    a = new Apple(width-30,height/2+30,0,-1);
    fruit.add(a);
  } 

  s = new Strawberry(width/2,height/2,0,-1);
  p= new Player(width/2,height/2,0,-1);
  e = new Enemy(width/2,height/2,0,0);
  e1 = new Enemy(width/2+900,height/2+90,0,0);

}
boolean[] keys = new boolean[1000];
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

void keyPressed()
{ 
  keys[keyCode] = true;
}
 
void keyReleased()
{
  keys[keyCode] = false; 
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
     
       o.update();
       a.update();
       p.update();
    }
    break;
   case 2: 
    {
      level1();
        for(int i=0; i< fruit.size(); i++)
        {
            fruit.get(i).moving = false;
        }
        
         p.update();
   p.render();
   
      
   for(int i=0; i< fruit.size(); i++)
  {
      fruit.get(i).update();
 
    // o.display();
  }  
    
   p.update();
    fill(255);
     e.render();
    
 

    }
    break;
    case 3:
    {
      level2();
      score=0;
          
  /* p.update();
    fill(255);
     e.render();
      e1.render();
      */
    }break;
  
        
    
  
  
  
  }
/*  if(e.location.x == p.location.x || e.location.y == p.location.y)
  {
    println("  game over");
    
    
  }*/
  
 
  
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
text("Survive",width/2,height/2-100);

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
 fill(0);
   text("score = "+score,width-200,35);
 for(int i=fruit.size()-1; i >=0; i--)
      {
        Fruit o = fruit.get(i);
        Fruit a = fruit.get(i);
        if(p.location.x >=o.location.x-10&& p.location.y>=o.location.y-10&& p.location.x<=o.location.x+10&& p.location.y<=o.location.y+10)
        {
       fruit.remove(a);
       score++;
         fruit.remove(o);
         score = score + 5;
          if(score==12)
          {
            menu=3;
            
          }
       
        }

        
 }
  
}

void level2()
{


    strokeWeight(1);
 stroke(211,17,98);
 fill(255,255,0);
 rect(0,0,width,height);
 fill(255,0,255);
 rect(border*2,border*2,width-border*4,height-border*4);
 fill(0); 
    score=0;
    text("score = "+score,width-200,35);
  
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
  
  
 