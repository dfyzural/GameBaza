
/**
 * This file was generated by TONDev.
 * TONDev is a part of TON OS (see http://ton.dev).
 */
pragma ton-solidity >= 0.35.0;
pragma AbiHeader expire;

import "unit.sol";


contract archer is unit {

    constructor(baza bazaAddress) public {
        // Check that contract's public key is set
        require(tvm.pubkey() != 0, 101);
        // Check that message has signature (msg.pubkey() is not zero) and
        // message is signed with the owner's private key
        require(msg.pubkey() == tvm.pubkey(), 102);

        defence=10;
        health = 70;
        attackPower=60;
        uType = "Archer";
        bazaAddr = bazaAddress;
        bazaAddress.addUnit();

        tvm.accept();

    }

}
