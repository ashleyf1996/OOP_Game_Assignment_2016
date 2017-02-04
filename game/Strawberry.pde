PShape strawberry;
class Strawberry extends Fruit
{
  
  Strawberry(float a,float b,float c,float d)
  {
    super(a,b,c,d);
  }

  
   if(super.moving == true)
     {
       
       
         strawberry= createShape(GROUP);
     fill(255,0,0);
   PShape strawberryBody = createShape(TRIANGLE,120,0,160,0,140,30);
   fill(0,255,0);
   PShape strawberryLeaf1 = createShape(TRIANGLE,130,0,140,0,130,7);
     PShape strawberryLeaf2 = createShape(TRIANGLE,140,0,150,0,150,7);
     fill(0);
     PShape strawberryPoints = createShape(ELLIPSE,100,100,2,4);
   strawberry.addChild(strawberryBody);
   strawberry.addChild(strawberryLeaf1);
   strawberry.addChild(strawberryLeaf2);
     strawberry.addChild(strawberryPoints);
     }
  
  
  
  
}