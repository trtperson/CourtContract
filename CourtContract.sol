// SPDX-License-Identifier: RasulCompany
pragma solidity ^0.8.0;


struct Side {
    address  wallet;
    string   name;
    Appeal[] appeals;
}

struct Proof {
    string  name;
    string  soutcrLink;
    uint256 price;
}

struct Appeal {
    string  name;
    Proof[] proofs;
} 

contract Court {

    string public Dispute;

    Side   public SideOne;
    Side   public SideTwo;


    constructor(
        string memory dispute,
        string memory sideOneName,
        string memory sideTwoName,
        address sideOneWallet,
        address sideTwoWallet
        ){
        Dispute = dispute;

        SideOne.name   = sideOneName;
        SideOne.wallet = sideOneWallet;

        SideTwo.name   = sideTwoName;
        SideTwo.wallet = sideTwoWallet;
    }

    function addAppeal(string memory name) public {
        // if(msg.sender == SideOne.wallet){
        //     Appeal memory app;
        //     app.name = name;
        //     SideOne.appeals.push(app);
        // }

        // if(msg.sender == SideTwo.wallet){
        //     Appeal memory app;
        //     app.name = name;
        //     SideTwo.appeals.push(app);
        // }
    }
}