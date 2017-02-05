
class Instructions
{

    String age;
    String objective;
  String name;
 
    //Parameterised Constructor
    Instructions(String name, String age, String objective)
    {
   this.name = name;
    this.age = age;
    this.objective = objective;
    }
  
  //To string method
  String toString()
    {
    return name+ "\t"+ age + "\t" + objective + "\t";
    }
    

}