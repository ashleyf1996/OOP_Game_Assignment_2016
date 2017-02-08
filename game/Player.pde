
class Player extends Fruit
{
    float theta;
 PShape group;
 PShape group1;
  float move = 5;
  char up;
  char down; 
  char left;
  PVector forward;
  char right;
  PVector force;
      Player(float a,float b, float c, float d)
      {
        
            //passing back to my superclass
            super(a,b,c,d);
            this.theta = 0;
            forward = new PVector(0, -1);
            force = new PVector(0, 0);
        
               create();
              
     }
     void create()
     {
       
             //CREATING MY PLAYER
            group = createShape(GROUP);
   
      
             fill(165,65,65);
                   PShape leftEar = createShape(ELLIPSE,-20,-10,20,20);
               PShape rightEar = createShape(ELLIPSE,20,-10,20,20);
               fill(255);
               PShape leftEye= createShape(ELLIPSE,-6,-3,12,12);
                PShape rightEye= createShape(ELLIPSE,+6,-3,12,12);
                fill(0);
                PShape leftEyeDot= createShape(ELLIPSE,-4,-3,2,2);
                PShape rightEyeDot =createShape(ELLIPSE,+4,-3,2,2);
                
                fill(183,83,83);
               PShape body = createShape(ELLIPSE,0,39,55,45);
            PShape head = createShape(ELLIPSE,0,0,40,30);
            
            
              // PShape rectangle = createShape(RECT,-25,32,49,30);
                group.addChild(head);
                group.addChild(body);
                group.addChild(leftEar);
                group.addChild(rightEar);
                  group.addChild(leftEye);
                     group.addChild(rightEye);
                      group.addChild(leftEyeDot);
                     group.addChild(rightEyeDot);
               // group.addChild(rectangle);
                

               }
      float power=1;
      void update()
      {
       
        forward.x = sin(theta);
        forward.y = -cos(theta);
        
         if(p.location.x < (border*2))
        {
          p.location.x++;
        }
         if(p.location.x > (border*2 + (width-border*6))) {
           p.location.x--;
         }
         
             if(p.location.y < (border-20))
        {
          p.location.y++;
        }
         if(p.location.y > (border*2 + (height-border*8))) {
           p.location.y--;
         }
         
     
      

             if (checkKey('w'))
               {
            
                     super.location.add(PVector.mult(forward, power));
               }
               
              /* if(keyCode ==DOWN)
              {
                 location.sub(velocity);
              }
              */
               if(checkKey('a'))
             {
              
                 
                 theta += 0.1f;
                
              }
              
              
               if(checkKey('d'))
              {
    
                theta -= 0.1f;
              }
                
          
         
         p1.location.add(velocity);
      if(p1.location.y == 100)
       {
          location.sub(velocity);
       }
       
      }
      void render()
      {
         pushMatrix(); // Stores the current transform
    translate(this.location.x+30, this.location.y+80);

    rotate(theta);    
    shape(group, 0, 0);
    popMatrix();
    
      }
      
  

        
       
}