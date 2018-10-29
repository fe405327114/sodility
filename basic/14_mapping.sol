pragma solidity ^0.4.20;
contract test {
//定义mapping (key->value)
mapping (uint => string) id_name;
//注意：key不能为string
constructor()  public{
        id_name[1] = "lily";
        id_name[2] = "Jim";
        id_name[2] = "Lily";
    }
//根据id找名字
function getName(uint id)public view returns (string) {
   string memory name = id_name[id];
   return name;
}
//设置value
function setName(uint id)public returns (string) {
  id_name[id]="haha";
}
}
