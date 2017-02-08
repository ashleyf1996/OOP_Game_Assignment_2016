PShape enemy;
class Enemy extends Fruit
{
  float theta;
  boolean setOnce;
  PVector forward;
  Enemy(float a, float b, float c, float d)
  {
    super(a,b,c,d);
    forward = new PVector(0, -1);
    this.theta = 0;
    create();

  }
  
  void create()
  {
                enemy= createShape(GROUP);
    
               fill(255,0,0);
               PShape mainCircle = createShape(ELLIPSE,0,120,60,65);
               fill(255);
               fill(0,0,255);
               PShape leftEye = createShape(ELLIPSE,-10,110,20,25);
               PShape rightEye = createShape(ELLIPSE,12,110,20,25);
               fill(255);
               PShape bottomEye = createShape(ELLIPSE,0,135,30,20);
                 fill(0,0);
               PShape lineInMouth = createShape(ELLIPSE,0,135,35,5);
               fill(0);
               PShape leftEyeDot = createShape(ELLIPSE,-10,110,5,5);
               PShape rightEyeDot = createShape(ELLIPSE,+13,110,5,5);
               
                enemy.addChild(mainCircle);
                enemy.addChild(leftEye);
                enemy.addChild(rightEye);
                enemy.addChild(bottomEye);
                enemy.addChild(lineInMouth);
                enemy.addChild(leftEyeDot);       
               enemy.addChild(rightEyeDot);
  }
  
  void update()
  {
                  //boolean variable start enemy
                if(startEnemy == true)
                {
                  SplashScreenEnemy.location.add(velocity);
                  if(SplashScreenEnemy.location.y==250)
                  {
                  location.sub(velocity);   
                  }
                 
               }
               else if(startEnemy == false)
               {
                  this.location.x = lerp(this.location.x,p.location.x, 0.010);
                  this.location.y = lerp(this.location.y,p.location.y, 0.010);

                if(dist(this.location.x,this.location.y,p.location.x,p.location.y) < 40) {
                  
                 stage=2;
                
               }
                 
              
               
               }
                       
        }
       
           

      void render()
      {
        pushMatrix(); // Stores the current transform
  translate(this.location.x, this.location.y);
   
     shape(enemy, 0, 0);
  //
  popMatrix();
    //this functionality is for level 1 and chases the player


    
      }
}