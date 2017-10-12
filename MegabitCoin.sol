pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract MegabitCoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function MegabitCoin(address _owner)  UpgradeableToken(_owner) {
    name = "MegabitCoin";
    symbol = "MBC";
    totalSupply = 5000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}