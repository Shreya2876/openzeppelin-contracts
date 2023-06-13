// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import ".deps/npm/@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract Immanent is ERC20 {
    constructor(uint256 initialSupply) ERC20("Immanent Solutions", "IMNTS") { //"token name","symbol"
        _mint(msg.sender, initialSupply);
        /* function _mint(address account, uint256 amount) internal {
        require(account != address(0), "ERC20: mint to the zero address");
        _update(address(0), account, amount);
    }*/   
    }
    function decimals() public view virtual override returns(uint8){
    return 18;
    }
}