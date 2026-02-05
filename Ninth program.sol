//SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract learnEnum
{
    enum shirtColor { RED, WHITE, BLUE}
    shirtColor choice;
    shirtColor defaultShirtColor = shirtColor.BLUE;

    function getDefaultColor() public view returns (uint)
    {
        return uint(defaultShirtColor);
    }

    function setColorRED() public 
    {
        choice = shirtColor.RED;
    }

    function setColorWHITE() public 
    {
        choice = shirtColor.WHITE;
    }

    function setColor(uint _size) public 
    {
        choice = shirtColor(_size);
    }

    function getColor() public view returns (shirtColor)
    {
        return choice;
    }
}
