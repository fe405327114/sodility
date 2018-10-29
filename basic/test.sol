pragma solidity ^0.4.24;

contract Index {
  string public message;
  //构造函数 
  function Index()public payable {

  }
// 设置message
  function setMessage(string newMessage)public {
    message="hello world!";
    //获取message
  }
  function getMessage()returns (string) {
    return  message;
  }
}
