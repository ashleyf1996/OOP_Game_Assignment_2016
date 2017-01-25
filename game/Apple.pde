class Apple extends Fruit
{
 
 
  Apple(PVector location,PVector velocity)
  {
    super();
   location = new PVector(width-30,height/2+30); 
   velocity = new PVector (0,-1);
  
   
  }
   void display()
   {
     
     fill(0,255,0);
     //line 1
     line(location.x,location.y-20,location.x,location.y-25);
     
     //line 2
     line(location.x,location.y-25,location.x+5,location.y-30);
    ellipse(location.x,location.y,30,35);
    location.add(velocity);
   
    
  
     
   }
    
    
  }
  
  
  