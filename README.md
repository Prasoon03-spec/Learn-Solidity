# Learn-Solidity
Solidity practice repository where I upload my learning progress, exercises, and smart contract examples.

//First program: Inheritance using contructor:-

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract X
{
    string public name;

    constructor(string memory _name)
    {
        name= _name;
    }
}

contract Y
{
    string public text;

    constructor(string memory _text)
    {
        text= _text;
    }
}

contract B is X("INPUT TO X"), Y("INPUT TO Y") {}

contract C is X,Y
{
    constructor(string memory _name, string memory _text) X(_name) Y(_text) {}
}

contract D is X,Y
{
    constructor() X("X WAS CALLED") Y("Y WAS CALLED") {}
}

contract E is X,Y
{
    constructor() Y("Y WAS CALLED") X("X WAS CALLED") {}
}
