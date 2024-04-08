//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract Runes is Initializable, ERC20Upgradeable, OwnableUpgradeable {
    
    // replaces the usually constructor 
    function initialize() external initializer {
        __ERC20_init("Runes Token", "RUNES");
        //__Ownable_init(); // removed because of compile error
    }

    function mint(address to, uint amount) external onlyOwner {
        _mint(to, amount);
    }
}
