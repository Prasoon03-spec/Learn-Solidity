//SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract checkMultiple
{
    uint256[] private numberList = [1,2,3,4,5,6,7,8,9,10];

    function checkMultiples(uint256 _number) public view returns (uint256)
    {
        require(_number != 0, "Cannot divide by zero");
        uint256 count = 0;

        for(uint256 i = 0; i < numberList.length; i++)
        {
            if(checkMultiplesValidity(numberList[i], _number))
            {
                count++;
            }
        }

        return count;
    } 

    function checkMultiplesValidity(uint256 num_1, uint256 num_2) private pure returns (bool)
    {
        return num_1 % num_2 == 0;
    }
}
