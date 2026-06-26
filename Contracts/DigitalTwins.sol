// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract DigitalTwins is ERC721URIStorage, Ownable {
    uint256 private _nextTokenId = 0;
    
    constructor() 
        ERC721("Physical Digital Twins", "PDT") 
        Ownable(msg.sender)
    {}

    function mint(address to, string memory uri) public onlyOwner{
        uint256 tokenId = _nextTokenId;
        _nextTokenId++;

        _safeMint(to, tokenId);
        _setTokenURI(tokenId, uri);

    }
}
