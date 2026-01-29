//SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract myLoopingPractiseContract
{
    uint256[] private longList = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
    uint256[] private numberList = [1,4,34,56];

    function checkNumber(uint256 _number) public view returns (bool)
    {
        for(uint256 i=0; i<numberList.length; i++)
        {
            if(numberList[i] == _number)
            {
                return true;
            }
        }

        return false;
    }

    function checkEvenNumber() public view returns (uint256)
    {
        uint256 count = 0;

        for(uint256 i=0; i<longList.length; i++)
        {
            if(longList[i] % 2 == 0)
            {
                count++;
            }
        }

        return count;
    }
}
