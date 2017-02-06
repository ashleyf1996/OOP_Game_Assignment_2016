PShape enemy;
class Enemy extends Fruit
{
  boolean setOnce;
  Enemy(float a, float b, float c, float d)
  {
    super(a,b,c,d);
   
  }
  
    void update()
    {
    if(super.moving == true)
     {
        enemy= createShape(GROUP);
    
               fill(255,0,0);
               PShape mainCircle = createShape(ELLIPSE,0,120,60,65);
               PShape leftEye = createShape(ELLIPSE,-9,110,25,25);
               PShape rightEye = createShape(ELLIPSE,10,110,25,25);
               PShape bottomEye = createShape(ELLIPSE,0,130,25,25);
               
             //  fill(0);
               PShape bottomEyeDot = createShape(ELLIPSE,0,130,5,5);
               PShape leftEyeDot = createShape(ELLIPSE,-10,110,5,5);
              PShape rightEyeDot = createShape(ELLIPSE,+10,110,5,5);
                 
                  enemy.addChild(mainCircle);
                enemy.addChild(leftEye);
                enemy.addChild(rightEye);
                enemy.addChild(bottomEye);
                enemy.addChild(bottomEyeDot);
                enemy.addChild(leftEyeDot);       
                enemy.addChild(rightEyeDot);
                        
 
     e.location.add(velocity);
       
     }
     else 
     {
      if(this.setOnce == false) {
      location.x = random(90, width - 90);
      location.y = random(90, height - 90);
          this.setOnce = true;
           enemy= createShape(GROUP);
    
               fill(255,0,0);
               PShape mainCircle = createShape(ELLIPSE,0,120,60,65);
               PShape leftEye = createShape(ELLIPSE,-9,110,25,25);
               PShape rightEye = createShape(ELLIPSE,10,110,25,25);
               PShape bottomEye = createShape(ELLIPSE,0,130,25,25);
               
             //  fill(0);
               PShape bottomEyeDot = createShape(ELLIPSE,0,130,5,5);
               PShape leftEyeDot = createShape(ELLIPSE,-10,110,5,5);
              PShape rightEyeDot = createShape(ELLIPSE,+10,110,5,5);
                 
                  enemy.addChild(mainCircle);
               enemy.addChild(leftEye);
                enemy.addChild(rightEye);
                enemy.addChild(bottomEye);
                enemy.addChild(bottomEyeDot);
                enemy.addChild(leftEyeDot);       
                enemy.addChild(rightEyeDot);
          }  
              
      }
          
           
    
  }
      void render()
      {
        pushMatrix(); // Stores the current transform
  translate(location.x, location.y);
   
     shape(enemy, 0, 0);
  //
  popMatrix();
    //this functionality is for level 1 and chases the player
    location.x = lerp(e.location.x,p.location.x,0.003);
    location.y = lerp(e.location.y,p.location.y,0.003);

    
      }
}