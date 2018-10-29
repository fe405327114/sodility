pragma solidity ^0.4.24;
contract test01 {
  int8 a =100;
  int256 b =256;
function add()public constant returns (int) {
  return a+b;
}
function minus()public constant returns (uint256) {
  return uint256(b-a);
}
function isEqual(int c,int d)public pure returns(bool) {
  return c == d ;
}
function setValue()public returns(int8 num) {
    a = num;
  }
}
