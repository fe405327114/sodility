pragma solidity ^0.4.20;
contract test {
struct Student {
  string name;
  uint8 age;
  uint score;
  string sex;
}
//两种赋值方式
Student public stu1 = Student ("lily",18,90,"girl");
Student public stu2 = Student ({name:"jim",age:20,score:80,sex:"boy"});

Student[] public Students;

//添加进数组
function assign()public {
 stu1.name="gougou";
 Students.push(stu1);
 Students.push(stu2);
}
}
