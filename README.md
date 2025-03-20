# Shared Wishlist Platform

## Project Title
Shared Wishlist Platform

## Project Description
The Shared Wishlist Platform is an online tool that allows users to create and share lists of items they want or need. It facilitates gift-giving, collaborative shopping, and organizing future purchases. The platform enables users to add items, set privacy preferences, and share their lists via links or social media.

## Project Vision
Our vision is to build a decentralized and transparent wishlist management system where users can securely maintain and share their wishlist without relying on centralized platforms. By leveraging blockchain technology, we aim to provide users with full ownership and control over their data.

## Future Scope
- Integration with e-commerce platforms for seamless purchasing.
- NFT-based gift reservations to prevent duplicate gifting.
- Smart contract-based contribution pooling for group purchases.
- Mobile application for better accessibility.
- Advanced privacy settings and sharing options.

## Key Features
- Users can add, update, and remove wishlist items.
- Privacy settings allow users to control who can see their wishlist.
- Smart contract ensures transparency and security of the wishlist data.
- Users can share their wishlist publicly or with selected individuals.
- Decentralized storage of wishlist data to prevent unauthorized modifications.

## Smart Contract Overview
This project includes a Solidity-based smart contract that enables users to create and manage their wishlists securely on the blockchain. The key functionalities provided by the contract include:

### Functions
1. **addItem(string memory _name, string memory _description, bool _isPublic)**: Adds a new item to the user's wishlist with a name, description, and privacy setting.
2. **updateItem(uint _index, string memory _name, string memory _description, bool _isPublic)**: Updates an existing wishlist item with new details.
3. **removeItem(uint _index)**: Removes an item from the user's wishlist.
4. **getWishlist(address _user) public view returns (Item[] memory)**: Fetches the wishlist of a specific user.

### Events
- **ItemAdded**: Triggered when a new item is added.
- **ItemUpdated**: Triggered when an item is updated.
- **ItemRemoved**: Triggered when an item is removed.

This smart contract provides a decentralized way to manage wishlists with user-controlled access and transparent record-keeping.
