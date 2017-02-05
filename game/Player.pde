
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
   
        fill(255,255,0);
               PShape head = createShape(ELLIPSE,0,0,40,30);
               PShape body = createShape(ELLIPSE,0,39,55,45);
               PShape leftEar = createShape(ELLIPSE,-20,-10,20,20);
               PShape rightEar = createShape(ELLIPSE,20,-10,20,20);
               PShape rectangle = createShape(RECT,-25,32,49,30);
                group.addChild(head);
                group.addChild(body);
                group.addChild(leftEar);
                group.addChild(rightEar);
                group.addChild(rectangle);
                

               }
      float power=1;
      void update()
      {
        
        forward.x = sin(theta);
        forward.y = -cos(theta);
        
         if(p.location.x < (border*2)+20)
        {
          p.location.x++;
        }
         if(p.location.x > (border*2 + (width-border*4-20))) {
           p.location.x--;
         }
         
             if(p.location.y < (border*2)+20)
        {
          p.location.y++;
        }
         if(p.location.y > (border*2 + (height-border*4-20))) {
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
      if(p1.location.y == 200)
       {
          location.sub(velocity);
       }
       
      }
      void render()
      {
         pushMatrix(); // Stores the current transform
    translate(location.x, location.y);

    rotate(theta);    
    shape(group, 0, 0);
    popMatrix();
    
      }
      
  

        
       
}