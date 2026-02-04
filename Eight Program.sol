//SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract learningEnum
{
    enum frenchFriesSize {SMALL, MEDIUM, LARGE}
    frenchFriesSize choice;
    frenchFriesSize defaultFrenchFriesSize = frenchFriesSize.MEDIUM;

    function getDefaultFrenchFriesSize() public view returns (uint)
    {
        return uint(defaultFrenchFriesSize);
    }

    function getSizeSmall() public 
    {
        choice = frenchFriesSize.SMALL;
    }

    function getSizeLarge() public 
    {
        choice = frenchFriesSize.LARGE;
    }

    function setSize(uint _size) public 
    {   
        require(_size <= uint(frenchFriesSize.LARGE), "Invalid size");
        choice = frenchFriesSize(_size);
    } 

    function getSize() public view returns (frenchFriesSize)
    {
        return choice;
    }
}
