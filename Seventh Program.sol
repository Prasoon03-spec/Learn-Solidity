//SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract arrayPractise
{
    uint256[] public activeElements;

    function removeElement(uint256 i) public 
    {
        activeElements[i] = activeElements[activeElements.length - 1];
        activeElements.pop();
    }

    function pushElements() public
    {
        for(uint256 i=1; i<=4; i++)
        {
            activeElements.push(i);
        }
    }

    function getArray() public view returns (uint256[] memory)
    {
        return activeElements;
    }
}
