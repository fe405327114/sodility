pragma solidity ^0.4.24;
contract test04 {
//长度和内容均不可修改
//可以通过下表访问

bytes1 public b1="h";

bytes2 public b2="he";

bytes10 public b10="helloworld";

function getLen()public view returns (uint) {
  return b2.length;
}
function getByIndex(uint i)public view returns(byte){
  return b10[i];
}
}
