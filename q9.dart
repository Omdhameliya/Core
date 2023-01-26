import 'dart:io';


void main( ) {
  
  print( " \n MENU \n Select the choice you want to perform : \n 1. ADD \n 2. SUBTRACT \n 3. MULTIPLY \n 4. DIVIDE \n 5. EXIT \n Choice you want to enter : " ) ;
  int? n = int.parse( stdin.readLineSync( ) ! ) ;


  
  print( " \n Enter the value for x : " ) ;
  int? x = int.parse( stdin.readLineSync( ) ! ) ;


  
  print( " \n Enter the value for y : " ) ;
  int? y = int.parse( stdin.readLineSync( ) ! ) ;


  
  switch ( n ) {


    
    case 1 :
      int s = x + y ;
      print( ' \n Sum of the two numbers is : ' ) ;
      print( s ) ;
      break ;


    
    case 2 :
      int d = x - y ; 
      print( ' \n Difference of the two numbers is : ' ) ;
      print( d ) ;
      break ;


    
    case 3 :
      int m = x * y ;
      print( ' \n Product of the two numbers is : ' ) ;
      print( m ) ;
      break ;


    
    case 4 :
      int div = x ~/ y ;
      print( ' \n Quotient of the two numbers is : ' ) ;
      print( div ) ;
      break ;


    
    default :
      print( " Wrong choice " ) ;
  }
}