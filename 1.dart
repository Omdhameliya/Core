import 'dart:io';

void main() {
      stdout.write("Enter Input");
      int n=int.parse(stdin.readLineSync()!);
      
      for(int i=0;i<n;i++){
        stdout.write("Enter $i :-");
        int a=int.parse(stdin.readLineSync()!);
      } 
      List l = List.generate(n, (i) => ("${i=1} Hello"));
      print(l);
}