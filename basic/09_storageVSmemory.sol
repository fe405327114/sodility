pragma solidity ^0.4.24;

contract test1 {

string public name="gougou";
uint public num=10;

function callSetValue1() public {
        setValue1(name);
    }

    function setValue1(string memory _name)internal {
        //name[0] ="B";
        bytes(_name)[0] ="B";
        num = 1000;
    }


    function callSetValue2() public {
            setValue2(name);
        }
//指定string为storage类型时则为引用类型
        function setValue2(string storage _name)internal {
            //name[0] ="B";
            bytes(_name)[0] ="B";
            num = 1000;
        }
        function localTest() public view{
          //String作为局部变量时，默认是storageleixing，但是可以指定为memory
          // string tmp = name;
          string memory tmp = name;

          bytes(tmp)[0] = "B";
      }

}
