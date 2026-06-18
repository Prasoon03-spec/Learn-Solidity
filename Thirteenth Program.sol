//SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract sample_example_of_mapping 
{
    mapping(address => uint256) public balances;
    mapping(address => bool) public initialized;

    function getBalance(address user) public view returns(uint256)
    {
        if(!initialized[user])
        {
            return 1;
        }

        return balances[user];
    }

    function updateBalance(uint256 newBalance) public 
    {
        balances[msg.sender] = newBalance;
        initialized[msg.sender] = true;
    }
}
