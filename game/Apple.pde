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
     fill(0,255,0);
     //line 1
     line(location.x,location.y-20,location.x,location.y-25);
     
     //line 2
     line(location.x,location.y-25,location.x+5,location.y-30);
    ellipse(location.x,location.y,30,35);
    location.add(velocity);
   
     }
     else 
     {
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
  
  
  