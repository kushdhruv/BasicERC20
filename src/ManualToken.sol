    //SPDX-License-Identifier: MIT

    //to create an ERC-20 token we have to add some default functions too to meet the standard like name totalSupply etc
    pragma solidity ^0.8.28;

    contract  ManualToken {

        mapping (address => uint) private s_balances;

        function name() public pure returns(string memory) {
            return "ManualToken";
        }
        function totalSupply() public pure returns(uint256) {
            return 100 ether;
        }
        function decimals() public pure returns(uint8) {
            return 18;
        }
        function balanceOf(address _owner) public view returns(uint256) {
            return s_balances[_owner];
        }
        function transfer(address _to,uint256 _value) public {
            uint256 previousBalance = s_balances[msg.sender] + balanceOf(_to);

            s_balances[msg.sender] -= _value;
            s_balances[_to] += _value;
            require(balanceOf(msg.sender) + balanceOf(_to) == previousBalance, "Transfer failed");
        }
    }