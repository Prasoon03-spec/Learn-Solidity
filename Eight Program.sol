//SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract learningEnums
{
    enum frenchFriesSize {SMALL, MEDIUM, LARGE}
    frenchFriesSize choice;
    frenchFriesSize defaultFrenchFriesSize = frenchFriesSize.SMALL;

    function setSizeMedium() public
    {
        choice = frenchFriesSize.MEDIUM;
    }

    function setSizeLarge() public 
    {
        choice = frenchFriesSize.LARGE;
    }

    function getDefaultFrenchFriesSize() public view returns (uint)
    {
        return uint(defaultFrenchFriesSize);
    }

    function getFrenchFriesSize() public view returns (frenchFriesSize)
    {
        return choice;
    }
    
    function setFrenchFriesSize(uint _size) public 
    {
        require(_size <= uint(frenchFriesSize.LARGE), "Invalid size");
        choice = frenchFriesSize(_size);
    }
}
