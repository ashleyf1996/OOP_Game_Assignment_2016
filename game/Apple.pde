class Apple extends Fruit
{
 
 
  Apple(float a,float b,float c,float d)
  {
    super(a,b,c,d);

  
   
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
  
  
  