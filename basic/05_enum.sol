pragma solidity ^0.4.24;
contract test05 {


enum WeekDays {
  Monday,
      Tuesday,
      Wednesday,
      Thursday,
      Friday,
      Saturday,
      Sunday
}
//定义 变量day为WeekDays
WeekDays public day;

//设置day
function setDay(WeekDays _num)public {
  day = _num;
}
//获取day
function getDay()public view returns (WeekDays) {
  return  day;
}
//设置旅行时间
function Tour()public {
  day=WeekDays.Saturday;
}
}
