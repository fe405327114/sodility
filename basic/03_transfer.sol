pragma solidity ^0.4.24;
contract test03 {
  //构造函数
constructor()public payable{
  //payable表示可以转账,构造函数中的payable表示可以在创建合约时进行转账
}
//1 ehter =10^18 wei 以太币
//1 bic = 10^8 sat 比特币
//合约中的单位是wei
function getContractBalance()public view returns (uint){
  return address(this).balance;
}
function transferTo(address _receiver)public {
  //转账的单位是wei
      //给谁转，就用谁调用transfe
      // 如果转账失败，抛异常
  _receiver.transfer(address(this).balance);
}

  function sendTo(address _receiver)public returns (bool) {
    bool res=_receiver.send(1);
    return res;
  }
}
