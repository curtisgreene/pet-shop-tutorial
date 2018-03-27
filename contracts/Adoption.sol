pragma solidity ^0.4.17;

contract Adoption {
  //solidity is statically-typed, so you need to
  //declare datatypes
  //address is a datatype, stored as 20-byte values
  //addresses are Ethereum addresses (locations on the blockcahain?)
  // the below is a variable, referencing an array of addresses, with a legnth of 16
  // array is called `adopters`
  address[16] public adopters;

  // Adopting a pet

  // we need to define the types of params and the return
  function adopt(uint petId) public returns (uint) {
    // petId must fit the array, Solidity is zero-indexed
    require(petId >= 0 && petId <= 15);
    // msg.sender is the person/smart contract that stored the function
    // so we add the msg.sender to the array
    adopters[petId] = msg.sender;

    return petId;
  }

  function getAdopters() public view returns (address[16]){
    return adopters;
  }

}
