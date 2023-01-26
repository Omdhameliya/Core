import 'dart:io';

void main(){
  
  int num, i;
  stdout.write('enter a number :-');
  num = int.parse(stdin.readLineSync()!);

 for(i = 1;i <= 10;i++){
   print('$num * $i = ${num*i}');
 }
}