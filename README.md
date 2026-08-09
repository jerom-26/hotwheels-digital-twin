# hotwheels-digital-twin

Hot Wheels Digital Twin

A small proof-of-concept I built to explore how a physical collectible can be linked to a digital record using NFTs and IPFS.

The idea was to take a real Hot Wheels car from my collection, document it properly, store its information and images as metadata, and mint an ERC-721 token representing that physical item.

Prototype

For the first test I used a Mattel Dream Mobile – 80th Anniversary Hot Wheels.

I assigned it the ID HW-001 and documented details including:

* model and edition
* condition
* packaging
* photos from different angles
* an ownership proof photo

The NFT metadata points to the collectible image stored on IPFS.

How it works

The basic flow is:

Physical collectible → Photos & metadata → IPFS → ERC-721 NFT

The smart contract is written in Solidity using OpenZeppelin’s ERC721URIStorage and Ownable.

Each token gets its own metadata URI when it is minted.

function mint(address to, string memory uri) public onlyOwner

For now, minting is restricted to the contract owner since this is only a prototype.

Project structure

Contracts/
  DigitalTwins.sol     # ERC-721 contract
Raw/                   # Original photos
jpg/                   # Processed collectible photos
metadata.json          # Metadata for HW-001
README.md

Tech used

* Solidity
* ERC-721
* OpenZeppelin
* IPFS
* JSON

What I wanted to test

The main question behind this project was whether I could give a physical collectible a digital identity without replacing the physical item itself.

The NFT is simply the digital record. The actual Hot Wheels car remains the real collectible.

Eventually I would like to experiment with using these digital twins inside games or interactive 3D collections, but this repository is currently just the first working prototype.

Disclaimer

This is a personal experimental project and is not affiliated with Mattel or Hot Wheels.
