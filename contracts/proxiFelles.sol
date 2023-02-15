//SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import { IBRX } from "./IProximo.sol";

contract nBRX {

    address xBRX;

    address public Owner;

    constructor (address _brx) {
        Owner = msg.sender;
        xBRX = _brx;
    }

    function addRefs(address _vRef) external {
        IBRX(xBRX).assignRole(_vRef);
    }

    function switchRefs(address _vRef, address _vREFn) external {
        IBRX(xBRX).transferRole(_vRef,_vREFn);
    }

    function deleteRef(address _vRef) external {
        IBRX(xBRX).removeRole(_vRef);
    }

}