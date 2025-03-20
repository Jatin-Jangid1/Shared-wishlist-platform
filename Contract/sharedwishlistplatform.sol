// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SharedWishlist {
    struct Item {
        string name;
        string description;
        bool isPublic;
        address owner;
    }
    
    mapping(address => Item[]) private userWishlists;
    
    event ItemAdded(address indexed user, string name, bool isPublic);
    event ItemUpdated(address indexed user, uint index, string name, bool isPublic);
    event ItemRemoved(address indexed user, uint index);
    
    function addItem(string memory _name, string memory _description, bool _isPublic) public {
        userWishlists[msg.sender].push(Item(_name, _description, _isPublic, msg.sender));
        emit ItemAdded(msg.sender, _name, _isPublic);
    }
    
    function updateItem(uint _index, string memory _name, string memory _description, bool _isPublic) public {
        require(_index < userWishlists[msg.sender].length, "Invalid index");
        userWishlists[msg.sender][_index].name = _name;
        userWishlists[msg.sender][_index].description = _description;
        userWishlists[msg.sender][_index].isPublic = _isPublic;
        emit ItemUpdated(msg.sender, _index, _name, _isPublic);
    }
    
    function removeItem(uint _index) public {
        require(_index < userWishlists[msg.sender].length, "Invalid index");
        uint lastIndex = userWishlists[msg.sender].length - 1;
        userWishlists[msg.sender][_index] = userWishlists[msg.sender][lastIndex];
        userWishlists[msg.sender].pop();
        emit ItemRemoved(msg.sender, _index);
    }
    
    function getWishlist(address _user) public view returns (Item[] memory) {
        return userWishlists[_user];
    }
}
