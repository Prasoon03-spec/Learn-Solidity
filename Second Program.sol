//SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract EventTicket
{
    uint256 numberOfTickets;
    uint256 ticketPrice;
    uint256 totalAmount;
    uint256 public startAt;
    uint256 public endAt;
    uint256 public timeRange;
    string public message= "Hello everyone, buy your first event ticket";

    constructor(uint256 _ticketPrice)
    {
        ticketPrice = _ticketPrice;
        startAt= block.timestamp;
        endAt= block.timestamp+ 7 days;
        timeRange= (endAt- startAt)/60/60/24;
    }

    function buyTicket(uint256 _amount) public returns(uint256 ticketId)
    {
        numberOfTickets++;
        totalAmount+= _amount;
        ticketId = numberOfTickets;
    }

    function getTotalAmount() public view returns(uint256)
    {
        return totalAmount;
    }
}
