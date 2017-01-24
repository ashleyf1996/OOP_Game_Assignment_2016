class Player
{
      PVector locationl;
      PVector velocity;
  
      Player()
      {
        
           locationl = new PVector(width-80,height/2+90); 
           velocity = new PVector (0,-1);
  
        
      }
      
      void display()
      {
        fill(255,0,255);
        ellipse(locationl.x,locationl.y,60,60);
        
        
      }
  
}