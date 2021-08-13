//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract SmartContractsStructs {
  // 1. Declare struct
  // 2. C.R.U.D
  // 3. Array of struct
  // 4. Mapping of struct

  // 1. Declare struct
  struct User {
    address addr;
    uint score;
    string name;
  }

  // 3. Array of struct
  User[] users;
  
  // 4. Mapping of struct
  mapping(address => User) userList2;

  function foo(string calldata _name) external {
    // C
    User memory user1 = User(msg.sender, 0, _name);
    User memory user2 = User(msg.sender, 0, _name);
    User memory user3 = User({name: _name, score: 0, addr: msg.sender});

    // R
    user3.addr;
    // U
    user3.score = 20;
    // D
    delete user1;

    users.push(user2);
    
    userList2[msg.sender] = user3;
  }
}