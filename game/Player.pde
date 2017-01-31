
class Player extends Fruit
{
    float theta;
 PShape group;
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
            group = createShape(GROUP);
        fill(255,0,0);
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
         
       /* //my player
        fill(255,0,0);
        //main circle
        ellipse(location.x,location.y,40,30);
        //left smaller circle
        ellipse(location.x-20,location.y-10,20,20);
        //righthside
        ellipse(location.x+20,location.y-10,20,20);
        //body
        ellipse(location.x,location.y+39,55,45);
        //line 1
        stroke(0);
       //line(locationl.x-28,locationl.y+32,locationl.x+40,locationl.y+30);
        rect(location.x-25,location.y+32,49,30);
 */
      

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
                
          
        
         
      }
      void render()
      {
         pushMatrix(); // Stores the current transform
    translate(location.x, location.y);
    println(location.x);
    println(location.y);
    rotate(theta);    
    shape(group, 0, 0);
    popMatrix();
    
      }
      void enemy()
      {
       //enemy
       //body
       ellipse(location.x ,location.y+120,60,65);
       //left eye
       ellipse(location.x-9,location.y+110,25,25);
       
       //right eye
       ellipse(location.x+10,location.y+110,25,25);
       
       //bottom eye
       ellipse(location.x,location.y+130,25,25);
      
    
      //bottom eye dot
         fill(0);
        ellipse(location.x,location.y+130,5,5);
        
      //left eye dot
        ellipse(location.x-10,location.y+110,5,5);
        
        //right eye dot 
        ellipse(location.x+10,location.y+110,5,5);
           location.add(velocity);
          
          if(location.y == 300)
          
          {
            location.sub(velocity);
          }
   
      }
  

        
       
}