import 'dart:io';

import 'dart:math';

void main(){
 
  int chance = 3, point = 0;
  var i = "y";
  while (i == "y") {
    int rand = Random().nextInt(10);
    print(rand);
    stdout.write("enter the number of user   :");
    int input = int.parse(stdin.readLineSync()!);
    if (chance == 3) {
      if (rand == input) {
        point += 30;
        print(point);
        if (point >= 200) {
          print("your win and exit your programe :");
          break;
        }
      }
    } else if (chance == 2) {
      //chance--;
      if (rand == input) {
        point += 20;
        print("points :$point");
        if (point >= 200) {
          print("your win and exit your programe :");
          break;
        }
      }
    } else if (chance == 1) {
      // chance--;
      if (rand == input) {
        point += 10;
        print("point   :  $point");
        if (point >= 200) {
          print("your win and exit your programe :");
          break;
        }
      }
    } else if (chance == 0) {
      print("your chance is finish");
      i = "n";
    }
    if (rand != input) {
      chance--;
    }
  }

  print("first task");
  stdout.write("enter base number  :");
  var a=int.parse(stdin.readLineSync()!);
  stdout.write("enter power number  :");
var b=int.parse(stdin.readLineSync()!);

power(a, b);
  stdout.write("enter year check leap year or not  :");
  print("second task");

int year=int.parse(stdin.readLineSync()!);
leapyear(year);
print("third task :");

 stdout.write("enter first number  :");
  int a1=int.parse(stdin.readLineSync()!);
  stdout.write("enter second number  :");
int b1=int.parse(stdin.readLineSync()!);
stdout.write("enter third number  :");
int c1=int.parse(stdin.readLineSync()!);
print("the area of triangle through  this formula area=s(s-a)(s-b)(s-c);  :${findareatriangle(a1,b1,c1)}");
var tri=findSvaluetri(a1,b1,c1);
print("the area of triangle through this formula s=(a+b+c)/2;  :${tri}");
stdout.write("enter first sub mark  :");
  int m1=int.parse(stdin.readLineSync()!);
  stdout.write("enter second sub mark  :");
int m2=int.parse(stdin.readLineSync()!);
stdout.write("enter third sub mark  :");
int m3=int.parse(stdin.readLineSync()!);
studentmarksum(m1,m2,m3);
studentpercen(m1,m2,m3);
studentaverage(m1,m2,m3);
print("five task");
int km=int.parse(stdin.readLineSync()!);
kmtom(km);
kmtofeet(km);
kmtoinch(km);
kmtocm(km);
stdout.write("enter the base value :");
  int a3=int.parse(stdin.readLineSync()!);
stdout.write("enter the hypatunuse value  :");
  int b3=int.parse(stdin.readLineSync()!);
  print("user input \n hypa value is without squre :${hypa(a3,b3)}");
  hypa(a3,b3);

  print(" hypa value is without squre :${hypa(2,3)}");
  stdout.write(" hypa value is with squre :");
  valueofhyp();
stdout.write("enter the width value :");
  int w=int.parse(stdin.readLineSync()!);
stdout.write("enter the length value  :");
  int l=int.parse(stdin.readLineSync()!);
  areaOfRectangle(w,l);
currentdate();
stdout.write("enter the value of facroeial :");
  int a4=int.parse(stdin.readLineSync()!);
var fac=factorial(a4);
print(fac);

}


power(int a,b){
  int d=1;
  
  while(b!=0){
    d*=a;
    b--;
  }if(b>=0){print(d);}
  else if(b==0){
    print(d);
  }
}
leapyear(c){
  if(c%4==0){
    print("the year is leap year ");
  }else{
    print("the is not leap year");
  }

}
findareatriangle(a,b,c){
  print("area of triangle area");
  double s=(a+b+c)/2;
  //  int inte=s.toInt();
  var area=s*((s-a)+(s-b)+(s-c));
  return area;
}
findSvaluetri(a,b,c){
  var s=(a+b+c)/2;
  return s;
}
studentmarksum(a,b,c){
  int sum=a+b+c;
  print("sum  :${sum}");
}
studentpercen(a,b,c){
  var per=(a+b+c)/300*100;
  print("percantage  :${per}");
}
studentaverage(a,b,c){
  var aver=(a+b+c)/3;
  print("average  :$aver");
}
kmtom(km){
print("km to meter  :${km*1000} meter");
}
kmtofeet(km){
  print("covert km to feet  :${(km*1000)*3} feet");
}
kmtoinch(km){
  print("covert km to inch  :${((km*1000)*3)*12} inch");
}kmtocm(km){
  print("covert km to cm  :${(((km*1000)*3)*12)*2.54} cm");
}
var hyp;
int hypa(bas,perpen){
  
 hyp=bas*bas+perpen*perpen;
return hyp;
}
void valueofhyp(){
print(hyp*hyp);
}
void areaOfRectangle(w,l){
var area=w*l;
print("area of rectangle  :$area");
}
void currentdate(){
  var a=DateTime.now();
  print("date  :${a.toString().substring(8,10)}");
  print("time  :${a.toString().substring(10,19)}");
  //print(a);

}int fact=1;
int factorial(a){
  if(a==0 ||a==1){
  return fact;}else{
    for(int a1=a;a1>0;a1--){
      fact*=a1;
    }
  return fact;
}}
