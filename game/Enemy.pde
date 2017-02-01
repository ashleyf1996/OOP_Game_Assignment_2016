class Enemy extends Fruit
{
   PShape group2;
  Enemy(float a, float b, float c, float d)
  {
    super(a,b,c,d);
   
    drawEnemy();
  }
  
   void drawEnemy()
  {
    group2= createShape(GROUP);
    

               PShape mainCircle = createShape(ELLIPSE,0,120,60,65);
               PShape leftEye = createShape(ELLIPSE,-9,110,25,25);
               PShape rightEye = createShape(ELLIPSE,10,110,25,25);
               PShape bottomEye = createShape(ELLIPSE,0,130,25,25);
               
             //  fill(0);
               PShape bottomEyeDot = createShape(ELLIPSE,0,130,5,5);
               PShape leftEyeDot = createShape(ELLIPSE,-10,110,5,5);
              PShape rightEyeDot = createShape(ELLIPSE,+10,110,5,5);
                 
                  group2.addChild(mainCircle);
                group2.addChild(leftEye);
                group2.addChild(rightEye);
                group2.addChild(bottomEye);
                group2.addChild(bottomEyeDot);
                group2.addChild(leftEyeDot);       
                group2.addChild(rightEyeDot);
         
    
  }
      void render()
      {
         pushMatrix(); // Stores the current transform
    translate(location.x, location.y);
   
     shape(group2, 0, 0);
    popMatrix();
    //this enemy stops the player getting the special fruit at the bottomm
     location.x = lerp(e.location.x,p.location.x,0.01);
     location.x = lerp(e1.location.x,p.location.x,0.01);
 // location.y = lerp(e.location.y,p.location.y,0.01);

    
      }
}