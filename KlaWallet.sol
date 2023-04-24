// SPDX-License-Identifier: Pay Luc

pragma solidity ^0.8.9;

contract KlaWallet{

address payable public owner;

constructor(){
    owner = payable(msg.sender);
}

receive () external payable {}

function withdraw(uint x) external {
    require(msg.sender ==owner ,"Get the fuck out of here , you thief!!!");
    payable(msg.sender).transfer(x);
}

function getBalance() external view returns(uint x){
    return address(this).balance;
}

function transfer(address payable y) external payable{
    y.transfer(1 ether);
}
    
}

