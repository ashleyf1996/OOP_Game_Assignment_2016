Orange o;
Orange o1;
Orange o2;
Orange or;
Apple a;
Apple ar;
Apple a1;
Strawberry s;
Strawberry s1;
Player p;
Player p1;
Enemy e;
Enemy SplashScreenEnemy;
Table table;
float border=30;
boolean startUp=true;
int menu=0;
 PFont fontSplashPage;
 PFont buttonFont;
 PFont instructionsFont;
 float x=0;
float y=1.5;
int score=0;
boolean startEnemy = true;
ArrayList<Instructions> targets= new ArrayList<Instructions>();  
 Instructions inst;

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
table = loadTable("data.tsv", "header, tsv");
//put param here-----
  for(int i=0; i< 3; i++)
  {
    o = new Orange(width-30,height,0,-2);
    fruit.add(o);
  }  
  
   for(int i=4; i< 6; i++)
  {
    a = new Apple(width-30,height+90,0,-2);
    fruit.add(a);
  } 
  
 
   
  o1 = new Orange(width-30,height+170,0,-2);
 s = new Strawberry(width/2+75,height/2-380,0,-1);
 a1 = new Apple(width-30,height+260,0,-2);
 o2 = new Orange(width-30,height+340,0,-2);

  s1 = new Strawberry(width/2+100,height/2,0,-1);
  p= new Player(width/2,height/2,0,-1);
  e = new Enemy(width,height,0,-1);
  p1= new Player(width/2-320,height,0,-5);
    SplashScreenEnemy = new Enemy(width/2-320,height,0,-5);
 


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
     // / a1.update();
      o1.update();
      o2.update();
      a1.update();
      p1.update();
      p1.render();
      SplashScreenEnemy.update();
     SplashScreenEnemy.render();
       s.update();
       s.render();
      /*s1.update();
       s1.render();*/
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
    
    fill(255);
    e.update();
     e.render();
  

    }
    break;
    case 3:
    {
          level1();
        for(int i=0; i< fruit.size(); i++)
        {
            fruit.get(i).moving = false;
        }
           for(int i=0; i< fruit.size(); i++)
  {
      fruit.get(i).update();
 
    // o.display();
  } 
        
      level2();
      score=0;
  
     
    }break;
  
        
    
  
  
  
  }
/*  if(e.location.x == p.location.x || e.location.y == p.location.y)
  {
    println("  game over");
    
    
  }*/
  
 
  
}

void splashScreen()
{
  
  startEnemy=true;
  //border for my screen
  background(151,245,244);
  strokeWeight(2);
 stroke(0);

 fill(255);
 rect(border*2,border*2,width-border*4,height-border*4);
 fill(0);


textSize(70);
 fill(255,154,3);
  //fruit
text("F",width/2-125,height/2-150);
textSize(50);
fill(0,255,0);
text("r",width/2-125+30,height/2-150);
fill(255,0,0);
text("u",width/2-125+55,height/2-150);
 fill(255,154,3);
text("i",width/2-125+80,height/2-150);
fill(0,255,0);
text("t",width/2-125+100,height/2-150);
fill(255,0,0);

//fever
textSize(70);
 fill(255,154,3);
  //fruit
text("F",width/2,height/2-113);
textSize(50);
fill(0,255,0);
text("e",width/2+30,height/2-113);
fill(255,0,0);
text("v",width/2+55,height/2-113);
 fill(255,154,3);
text("e",width/2+80,height/2-113);
fill(0,255,0);
text("r",width/2+105,height/2-113);
fill(255,0,0);



//play button 
 fill(17,247,245);
ellipse(width/2+3,height/2-65,80,40);
fill(0);
//button font
buttonFont = loadFont("HannotateSC-W5-48.vlw");
textFont(buttonFont, 20);


text("PLAY", width/2-20,height/2-58);

instructionsFont = loadFont("HannotateSC-W5-48.vlw");
textFont(instructionsFont, 20);
    for (TableRow row : table.rows()) {
         String name = row.getString("name");
         String age = row.getString("age");
         String objective = row.getString("objective");
         inst = new Instructions(name, age, objective);
         targets.add(inst);
          text("->",width/2-80,height/2+20);
           text("->",width/2-80,height/2+60);
         textSize(20);
         //collect
         text(name,width/2-50, height/2+20);
         text(age, width/2-50, height/2+60);
         text(objective, width/2-45, height/2+120);
    //player comment box
        textSize(10);
fill(0);
    line(60,230,80,230);
   // noFill();
   // rect(80,200,110,35);
    text("I'm a fruit eating bear!",85,210);
    text("Escape the enemy!",85,230);
    
    //ENEMY COMMENT BOX
    textSize(10);
    text("I'm a fruit eating monster!",90,360);
    text("Need to catch the player!",90,380);
    fill(0);
    line(60,380,80,380);
    
    noStroke();
    fill(255);
    rect(border+50,border*2+20,150,rect);
   rect = rect-2;
   if(rect == border*2+20)
   {
    rect = rect+2; 
     
   }
   // noFill();
   // rect(80,350,140,40);
}
   
 
}
  float rect= height/2+300;
void level1()
{

  startEnemy=false;
    strokeWeight(3);
 stroke(211,17,98);
 fill(169,234,240);
 rect(0,0,width,height);
 fill(255);
 rect(border*2,border*2,width-border*4,height-border*4);
 fill(0);
 textSize(20);
   text("score = "+score,width/2+200,40);
   text("LEVEL 1", width/2-300,40);
   //first one down
   for(int i=30; i<60;i=i+10)
   {
     fill(211,17,98);
     text("*",30,i);
   }
   //right down
      for(int i=30; i<60;i=i+10)
   {
     fill(211,17,98);
     text("*",width-30,i);
   }
     //top accross
  
    for(int i=30; i<670;i=i+10)
   {
     fill(211,17,98);
     text("*",i,30);
   }
   //bottom across
   for(int i=30; i<680;i=i+10)
   {
     fill(211,17,98);
     text("*",i,60);
   }


 for(int i=fruit.size()-1; i >=0; i--)
      {
        Fruit o = fruit.get(i);
        Fruit a = fruit.get(i);
  
        if(p.location.x >=o.location.x-15&& p.location.y>=o.location.y-15&& p.location.x<=o.location.x+15&& p.location.y<=o.location.y+15)
        {
       fruit.remove(a);
       score++;
         fruit.remove(o);
         score = score + 5;
          if(score==6)
          {
            menu=3;
            
          }
       
        }

        
 }
  
}

void level2()
{


   score=0;
    strokeWeight(3);
 stroke(211,17,98);
 fill(169,234,240);
 rect(0,0,width,height);
 fill(255);
 rect(border*2,border*2,width-border*4,height-border*4);
 fill(0);
 textSize(20);
   text("score = "+score,width/2+200,40);
   text("LEVEL 2", width/2-300,40);
   //first one down
   for(int i=30; i<60;i=i+10)
   {
     fill(211,17,98);
     text("*",30,i);
   }
   //right down
      for(int i=30; i<60;i=i+10)
   {
     fill(211,17,98);
     text("*",width-30,i);
   }
     //top accross
  
    for(int i=30; i<670;i=i+10)
   {
     fill(211,17,98);
     text("*",i,30);
   }
   //bottom across
   for(int i=30; i<680;i=i+10)
   {
     fill(211,17,98);
     text("*",i,60);
   }

for(int i=fruit.size()-1; i >=0; i--)
      {
        Fruit or = fruit.get(i);
        Fruit ar = fruit.get(i);
      }
  
  
}
void loadingBar()
{
  //background(0);
  textSize(20);
  text("Loading . . .", width/2-30,height/2+40);
  noFill();

 rect(width/2+150,height/2-50,350,100);

  fill(70,188,181);
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
  
  
 