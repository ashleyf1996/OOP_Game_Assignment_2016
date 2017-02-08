class Apple extends Fruit
{
 boolean setOnce;

  Apple(float a,float b,float c,float d)
  {
    super(a,b,c,d);

  
   
  }
   void update()
   {
      if(super.moving == true)
     {
       stroke(0);
       fill(0,255,0);
       //line 1
       line(location.x,location.y-20,location.x,location.y-25);
     
     //line 2
      line(location.x,location.y-25,location.x+5,location.y-30);
      ellipse(location.x,location.y,30,35);
      location.add(velocity);
    
     if(location.y == 200)
          
          {
            location.sub(velocity);
          }
      
         if(a1.location.y == 400)
          
          {
            location.sub(velocity);
          }
      
   
     }
     else 
     {
       stroke(0);
       if(this.setOnce == false) {
      location.x = random(90, width - 90);
      location.y = random(90, height - 90);
          this.setOnce = true;
       }
           fill(0,255,0);
     //line 1
     line(location.x,location.y-20,location.x,location.y-25);
     
     //line 2
     line(location.x,location.y-25,location.x+5,location.y-30);
    ellipse(location.x,location.y,30,35);
     }
  
     
   }
    
    
  }
  
  
  