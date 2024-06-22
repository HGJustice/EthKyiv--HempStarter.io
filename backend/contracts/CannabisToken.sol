// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';

contract CannabisToken is ERC20 {
  constructor(string memory name, string memory symbol) ERC20(name, symbol) {}

  function mint(address to, uint256 amount) external {
    _mint(to, amount);
  }

  function getTokenDetails(
    address userAddress
  ) public view returns (string memory, string memory, uint) {
    return (name(), symbol(), balanceOf(userAddress));
  }
}