class Player
{
      PVector locationl;
      PVector velocity;
  
      Player()
      {
        
           locationl = new PVector(width-30,height/2+90); 
           velocity = new PVector (0,-1);
  
        
      }
      
      void display()
      {
        
        //my player
        fill(255,0,255);
        //main circle
        ellipse(locationl.x,locationl.y,40,30);
        //left smaller circle
        ellipse(locationl.x-20,locationl.y-10,20,20);
        //righthside
        ellipse(locationl.x+20,locationl.y-10,20,20);
        //body
        ellipse(locationl.x,locationl.y+39,55,45);
        //line 1
        stroke(0);
       //line(locationl.x-28,locationl.y+32,locationl.x+40,locationl.y+30);
        rect(locationl.x-25,locationl.y+32,49,30);
        
       //enemy
       //body
       ellipse(locationl.x ,locationl.y+120,60,65);
       //left eye
       ellipse(locationl.x-9,locationl.y+110,25,25);
       
       //right eye
       ellipse(locationl.x+10,locationl.y+110,25,25);
       
       //bottom eye
       ellipse(locationl.x,locationl.y+130,25,25);
      
    
      //bottom eye dot
         fill(0);
        ellipse(locationl.x,locationl.y+130,5,5);
        
      //left eye dot
        ellipse(locationl.x-10,locationl.y+110,5,5);
        
        //right eye dot 
        ellipse(locationl.x+10,locationl.y+110,5,5);
        
        
          locationl.add(velocity);
          
          if(locationl.y == 300)
          
          {
            locationl.sub(velocity);
          }
   
      }
  
}