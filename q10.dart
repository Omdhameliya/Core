import 'dart:io';
void main(){
  int num;
  
  stdout.write('enter a num :-');
  num = int.parse(stdin.readLineSync()!);

  if(num % 2 == 0){
    print('even num');
  }
  else{
    print('odd num');
  }

}