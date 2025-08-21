//SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;

import {OurToken} from "../src/OurToken.sol";
import {Test} from "forge-std/Test.sol";
import {DeployOurToken} from "../script/DeployOurToken.s.sol";

contract OurTokenTest is Test {

     DeployOurToken deployer;
      OurToken ourToken;

    address bob = makeAddr("bob");
    address alice = makeAddr("alice");

    uint256 constant STARTING_BALANCE = 100 ether;

    function setUp () public {
         deployer = new DeployOurToken();
         ourToken = deployer.run();

        vm.prank(msg.sender);
        ourToken.transfer(bob,STARTING_BALANCE);
    }

    function testBobBalance() public view{
        assertEq(STARTING_BALANCE,ourToken.balanceOf(bob));
    }

    function testAllowanceWorks() public {
        uint256 initialAllowance = 1000 ;
        uint256 transferAmount = 500;

        vm.prank(bob);
        ourToken.approve(alice,initialAllowance);

        vm.prank(alice);
        ourToken.transferFrom(bob,alice,transferAmount);

        assertEq(ourToken.balanceOf(alice), transferAmount);
        assertEq(ourToken.balanceOf(bob), STARTING_BALANCE - transferAmount);

    }

}