//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

contract Member
{
    string public name;
    uint256 public age;

    constructor(string memory _name, uint256 _age)
    {
        name = _name;
        age = _age;
    }
}

contract Teacher is Member
{
    constructor (string memory n, uint256 a) Member(n, a) {}

    function getName() public view returns (string memory)
    {
        return name;
    }

    function getAge() public view returns (uint256)
    {
        return age;
    }
}
