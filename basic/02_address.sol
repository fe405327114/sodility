pragma solidity ^0.4.24;
contract test02 {
function getBalance(address _addr)public view returns (uint) {
  return _addr.balance;
}
//地址是160位数字，可以使用uint160来转换
    address add1 = 0x00ca35b7d915458ef540ade6068dfe2f44e8fa733c;
    uint160 u160 = uint160(add1);
    function add()public constant returns (uint160) {
      return u160+1;
    }
}
