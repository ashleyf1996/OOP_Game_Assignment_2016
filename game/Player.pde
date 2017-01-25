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
        fill(255,0,255);
        //main circle
        ellipse(locationl.x,locationl.y,40,30);
        //left smaller circle
        ellipse(locationl.x-20,locationl.y-10,20,20);
        //righthside
        ellipse(locationl.x+20,locationl.y-10,20,20);
        //bottom-left
        ellipse(locationl.x,locationl.y+39,40,50);
        //bottom right
         //locationl.add(velocity);
        
        
      }
  
}