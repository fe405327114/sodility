pragma solidity ^0.4.24;
contract test05 {

  constructor() public  {//如果构造函数中为指定payable关键字，那么创建合约时不允许转账

    }

    //任何函数，只要指定了payable关键字，这个合约就可以接受转账,调用时，也可以转0
    function giveMoney() public payable {

    }
   //当我们企图去执行一个合约上没有的函数时，那么合约就会执行这个匿名函数。
/* 当合约在只收到以太币的时候，也会调用这个匿名函数，而且一般情况下会消耗很少的gas,
所以当你接收到以太币后，想要执行一些操作的话，你尽可以把你想要的操作写到这个匿名函数里，因为这样做成本非常便宜。 */
    function ()payable {
    //一般用于合约的转账
    }
    function setValue(uint128 _num) public {
      num = _num;
  }

  function getBalance() public view returns(uint) {
      return address(this).balance;
  }


}
