//SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

interface IBRX {

    function assignRole(address _v) external;

    function transferRole(address _v, address _vN) external;

    function removeRole(address _v) external;

}