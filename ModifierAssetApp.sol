pragma solidity ^0.7.6;

contract Modifier{
    
    address sender = msg.sender;
    uint price;
    
    modifier Owner{
        require(msg.sender==sender, "You are not the Owner!");
        _;
    }
    
    function setPrice(uint _price) public Owner {
        price = _price;
    }
    
    function getPrice() public view returns (uint) {
        return price;
    }
    
    function changeOwner(address _newOwner) public Owner {
        sender = _newOwner;
    }
    
     function getOwner() public view returns (address) {
        return sender;
    }
    
}