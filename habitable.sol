pragma solidity ^0.4.0;

contract habitable{
    address me;
    mapping(address=>uint) balances;
    function habitable()
    {
        me=msg.sender;
    }
    function create_coin(uint ammount, address receiver) public
    {
        if(msg.sender == me)
        {
            //give coins to reciever
            balances[receiver]+=ammount;
        }
        else
        {
            throw;
            //no one else is able to give coins
        }
    }
    function view_balance() public returns (uint)
    {
        return balances[msg.sender];
    }
}
