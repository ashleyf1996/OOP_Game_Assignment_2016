PShape orange;
class Orange extends Fruit
{
 boolean setOnce;
 
  Orange(float a,float b,float c,float d)
  {
     //calling constuctor in super classs 
    super(a,b,c,d);
   this.setOnce = false;
 
 
   
   
     //loc = new PVector(width-38,height/2-48);
   
  }
   void update()
   {
     
     if(super.moving == true)
     {
     fill(255,154,3);
      stroke(0);
      strokeWeight(2);
      ellipse(location.x,location.y,40,40);
    
      stroke(0);
      fill(36,185,44);
      triangle(location.x-7,location.y-18,location.x,location.y-10,location.x+7,location.y-18);
  //if(loc.y==100)
   //  {
   //    loc.y--;
   //  }
      location.add(velocity);
      location.add(velocity);
          
          if(location.y == 200)
          
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
      fill(255,154,3);
      stroke(0);
      strokeWeight(2);
      ellipse(location.x,location.y,40,40);
    
      stroke(0);
      fill(36,185,44);
      triangle(location.x-7,location.y-18,location.x,location.y-10,location.x+7,location.y-18);
       
     }
    
   }
    
    
  }
  
  
  