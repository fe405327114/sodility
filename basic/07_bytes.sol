pragma solidity ^0.4.24;
contract test07{
//支持length,push(相当于append)方法
//可以修改内
//push方法以16进制格式赋值
//byte[len] name     //长度不可变，内部内容可更改
//格外注意：对于bytes，申请空间以后才可以使用下标进行访问，例如push或者直接赋值

bytes public name1=new bytes(1);
bytes public name2;//需要push  bytes1？

    function getName1Length() public view returns(uint256) {
        return name1.length;
    }

    function setName1Len(uint len) public {
        name1.length = len;
    }

    function setName2Len(uint len) public {
        name2.length = len;
    }

    function getName2ByIndex(uint i) public view returns(byte){
        return name2[i];
    }
    //给name2赋值
    function pushName2Value(byte src) public {
        name2.push(src);  //push方法，每次只能添加一个元素,而且是16进制
    }
    function setName2Value(string src)public {
      name2=bytes(src);
    }
}
