pragma solidity ^0.4.20;
contract Test {

bytes10 public b10 = 0x68656c6c6f776f726c64;//helloworld

//先将定长转为不定长，再转为string
bytes public bs=new bytes(b10.length);
//1. 固定字节数组转动态字节数组
function fixedToBytes()internal {
  for (uint i=0;i<b10.length;i++){
    bs[i]=b10[i];
  }
}
//2. 动态字节数组转string
string str;
function bytesToString() public returns(string){
  fixedToBytes();
  str=string(bs);
  return str;
}

//3.string转动态字节数组
//直接  bytes()


}
