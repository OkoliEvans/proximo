//SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract BRX {

address public owner;

constructor() {
    owner = msg.sender;
}

mapping(address => bool) isAssigned;

modifier onlyOwner(){
    require(owner == msg.sender);
    _;
}

function assignRole(address _v) external  {
 require(!isAssigned[_v]);
 require(_v != address(0));
 isAssigned[_v] = true;
}

function transferRole(address _v, address _vN) external {
    require(isAssigned[_v]);
    require(!isAssigned[_vN]);
    require(_vN != address(0));
    isAssigned[_v] = false;
    isAssigned[_vN] = true;
}

function removeRole(address _v) public {
    require(isAssigned[_v]);
    isAssigned[_v] = false;
}

function verifyMembers(address _v) public view returns(bool member){
 member = isAssigned[_v];
}


}