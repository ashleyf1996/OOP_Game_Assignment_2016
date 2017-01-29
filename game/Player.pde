 
class Player extends Fruit
{
    float theta;

  float move = 5;
  char up;
  char down; 
  char left;

  char right;
      Player(float a,float b, float c, float d)
      {
        
            //passing back to my superclass
            super(a,b,c,d);
            this.theta = theta;
               
     }
      
      void update()
      {
          rotate(theta); 
        //my player
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
    
      
         if (keyPressed)
         {
             if (keyCode ==UP)
               {
            
                  location.add(velocity);  
               }
               
              if(keyCode ==DOWN)
              {
                location.sub(velocity);
              }
              
               if(keyCode ==RIGHT)
             {
                 location.x=cos(theta);
                 location.y=sin(theta);
                 theta += 0.1f;
                
              }
              
              
               if(keyCode ==LEFT)
              {
     
                location.x=cos(theta);
                location.y=sin(theta);
                theta -= 0.01f;
              }
                
          
            
              }
         
        
          if(location.y == 300)
          
          {
            location.sub(velocity);
          }
     
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