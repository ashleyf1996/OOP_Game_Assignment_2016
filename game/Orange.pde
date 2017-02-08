class Orange extends Fruit
{
 boolean setOnce;
 PShape orange;
 PShape body;
 PShape stem;
 
  Orange(float a,float b,float c,float d)
  {
     //calling constuctor in super classs 
    super(a,b,c,d);
   this.setOnce = false;
   
   orange = createShape(GROUP);
   
   body = createShape(ELLIPSE, 0, 0, 40, 40);
   body.setFill(color(255, 128, 0));
   
   stem = createShape(TRIANGLE, -7, -18, 0, -10, 7, -18);
   stem.setFill(color(51, 204, 51));
   
   orange.addChild(body);
   orange.addChild(stem);
   
  }
  

   void update()
   {
     pushMatrix();
       translate(location.x, location.y);
       shape(orange, 0, 0);
       popMatrix();
     if(super.moving == true)
     {
       
       
  //if(loc.y==100)
   //  {
   //    loc.y--;
   //  }
      location.add(velocity);
    
          
          if(location.y == 100)
          
          {
            location.sub(velocity);
          }
      
            if(o1.location.y == 300)
          
          {
            location.sub(velocity);
          }
          
           if(o2.location.y == 500)
          
          {
            location.sub(velocity);
          }
      
    // loc.add(velocity);
     }
     else {
       
       if(this.setOnce == false) {
      location.x = random(70, width - 70);
      location.y = random(70, height - 70);
          this.setOnce = true;
       }
       
     }
    
   }
    
    
  }
  
  
  