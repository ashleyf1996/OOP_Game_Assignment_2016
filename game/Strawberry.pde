PShape strawberry;
class Strawberry extends Fruit
{
  boolean setOnce;
  Strawberry(float a,float b,float c,float d)
  {
    super(a,b,c,d);
  
  }

  void update()
  {
   if(super.moving == true)
     {
       //// the strawberry in the splash screen.
       
         strawberry= createShape(GROUP);
     fill(255,0,0);
   PShape strawberryBody = createShape(TRIANGLE,120,0,160,0,140,30);
   fill(0,255,0);
   PShape strawberryLeaf1 = createShape(TRIANGLE,130,0,140,0,130,7);
     PShape strawberryLeaf2 = createShape(TRIANGLE,140,0,150,0,150,7);
     fill(255,255,255);
     PShape strawberryPoint1 = createShape(ELLIPSE,135,10,1,1);
     PShape strawberryPoint2 = createShape(ELLIPSE,140,8,1,1);
     PShape strawberryPoint3 = createShape(ELLIPSE,145,10,1,1);
     
     PShape strawberryPoint4 = createShape(ELLIPSE,140,15,1,1);
    PShape strawberryPoint5 = createShape(ELLIPSE,140,22,1,1);

   strawberry.addChild(strawberryBody);
   strawberry.addChild(strawberryLeaf1);
   strawberry.addChild(strawberryLeaf2);
     strawberry.addChild(strawberryPoint1);
     strawberry.addChild(strawberryPoint2);
     strawberry.addChild(strawberryPoint3);
     strawberry.addChild(strawberryPoint4);
    strawberry.addChild(strawberryPoint5);

     }
     
     else 
     {
       
       if(this.setOnce == false) {
      location.x = random(90, width - 90);
      location.y = random(90, height - 90);
          this.setOnce = true;
          
           strawberry= createShape(GROUP);
     fill(255,0,0);
   PShape strawberryBody = createShape(TRIANGLE,120,0,160,0,140,30);
   fill(0,255,0);
   PShape strawberryLeaf1 = createShape(TRIANGLE,130,0,140,0,130,7);
     PShape strawberryLeaf2 = createShape(TRIANGLE,140,0,150,0,150,7);
     fill(255,255,255);
     PShape strawberryPoint1 = createShape(ELLIPSE,135,10,1,1);
     PShape strawberryPoint2 = createShape(ELLIPSE,140,8,1,1);
     PShape strawberryPoint3 = createShape(ELLIPSE,145,10,1,1);
     
     PShape strawberryPoint4 = createShape(ELLIPSE,140,15,1,1);
    PShape strawberryPoint5 = createShape(ELLIPSE,140,22,1,1);

   strawberry.addChild(strawberryBody);
   strawberry.addChild(strawberryLeaf1);
   strawberry.addChild(strawberryLeaf2);
     strawberry.addChild(strawberryPoint1);
     strawberry.addChild(strawberryPoint2);
     strawberry.addChild(strawberryPoint3);
     strawberry.addChild(strawberryPoint4);
    strawberry.addChild(strawberryPoint5);

       }
          
     }
  
  
  }
  void render()
  {
    
   pushMatrix(); // Stores the current transform
    translate(location.x, location.y);
   
     shape(strawberry, 100, 100);
   
    popMatrix();
    
  }
  
  
  
}