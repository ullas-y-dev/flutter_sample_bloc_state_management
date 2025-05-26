class Appstates {
 int  counter;
 Appstates({required this.counter});
}

class InitStates extends Appstates{
  InitStates(): super(counter: 0);
  
}