pragma solidity ^0.4.20;


// - 类型T，长度K的数组定义为T[K]，例如：uint [5] numbers,  byte [10] names;
// - 内容可变
// - 长度不可变，不支持push
// - 支持length方法


contract Test {
    uint [10]nums = [1,2,3,4,5,6,7,8,9,10];

    uint public sum;


    function getSum() public returns(uint) {
        for (uint i = 0; i< nums.length; i++) {
            sum += nums[i];
        }

        return sum;
    }


    //==================
   //bites1-32                              //长度不可变，内部字节不可变
   //byte[len] name                     //长度不可变，内部内容可更改
    bytes10 helloworldFixed = 0x68656c6c6f776f726c64;

    byte [10] byteArray = [byte(0x68), 0x65, 0x6c, 0x6c, 0x6f, 0x77, 0x6f, 0x72, 0x6c, 0x64];
    function setValue() public {
        byteArray[0] = 0x69;
    }

    bytes public res;
    function appendArray() public returns (string) {
        for (uint i = 0; i< byteArray.length; i++) {
            res.push(byteArray[i]);
        }
        return string(res);
    }
}
