pragma solidity ^0.4.24;
contract test08{
string public name="gougou";
//设置字符串的值
 function setValue(string src)public {
   name=src;
 }
//获取字符串的长度
function getLen()public view returns (uint) {
  return bytes(name).length;
}

//设置字符串的长度
function setLen(uint _len) public{
  bytes(name).length=_len;
}
}
