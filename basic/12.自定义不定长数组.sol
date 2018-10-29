pragma solidity ^0.4.20;


contract Test {
    //不定数组，第一种赋值方式：字面量形式赋值
    uint256[] public nums = [uint256(1),2,3,4];
    
    function addNum(uint256 _num) public {
        nums.push(_num);
    }
    
    
    
    //创建方式二：new 关键字	
    //a. storage类型数组，状态变量，最初为空，下标访问时越界
    uint[] public b;
    
    //复杂类型在局部是引用
    function g() public {
        b = new uint[](7);
        //可以修改数组的长度
        b.length = 10;//给定长度后，直接分配空间
        b[9] = 1000;
    }
    
    //b. memory类型数组
    function f() public returns (uint[]){
        uint[] memory a = new uint[](7);
        
        //对于函数内部new的数组，无法修饰为storage类型
        // uint[] storage a = new uint[](7);
        
        //不能修改长度
        //Error: Expression has to be an lvalue.
        //a.length = 100;
        //a.push(10);
            
         for (uint i = 0; i< a.length; i++){
             //长度不可改变，内容可以改变
             a[i] = i;
         }

        return a;
    }

}