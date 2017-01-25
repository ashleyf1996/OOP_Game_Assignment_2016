class Orange extends Fruit
{
 
 
  Orange(PVector location,PVector velocity)
  {
    super(location, velocity);
   /*location = new PVector(width-30,height/2-30);
     loc = new PVector(width-38,height/2-48);
     velocity = new PVector(0,-1);*/ 
  }
   void display()
   {
     
     fill(255,154,3);
      stroke(0);
      strokeWeight(2);
      ellipse(location.x,location.y,40,40);
    
      stroke(0);
      fill(36,185,44);
      triangle(loc.x,loc.y,loc.x+8,loc.y+8,loc.x+16,loc.y);
  if(loc.y==100)
     {
       loc.y--;
     }
      location.add(velocity);
      
     loc.add(velocity);
    
   }
    
    
  }
  
  
  