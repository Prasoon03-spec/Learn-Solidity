//SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract stringPractise
{
    string favouriteColor = "Blue";

    function getColor() public view returns (string memory)
    {
        return favouriteColor;
    }

    function changeColor(string memory _colour) public returns (string memory)
    {
        favouriteColor = _colour;
        return favouriteColor; 
    }

    function getChar() public view returns (uint256)
    {
        bytes memory str = bytes(favouriteColor);
        return str.length;
    }
}
