// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract MyNFT is ERC721 {
    uint public tokenCounter;

    constructor() ERC721("MyNFT", "MNFT") {
        tokenCounter = 0;
    }

    function mintNFT(address to) public returns (uint) {
        uint newTokenId = tokenCounter;
        _safeMint(to, newTokenId);
        tokenCounter++;
        return newTokenId;
    }
}
