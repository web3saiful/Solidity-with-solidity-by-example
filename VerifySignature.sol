// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;





contract VerifySing{
    function verify(address _signer,string memory _message,bytes memory _sig)
    external pure returns(bool)
    {
        bytes messageHash=  getMessageHash(_message);
        bytes ethSignedMessageHash=getEthSignedMessageHash(messageHash);

        return recover(ethSignedMessageHash,_sig)==_signer;
    }

    function getMessageHash(string memory _message)public pure returns(bytes32){
        return keccak256(abi.encodePacked(_message));
    }

    function getEthSignedMessageHash(bytes32 _messageHash)public pure returns(bytes32){
        return keccak256(abi.encodePacked(
            "\x19Ethereum Singed Message:\n32",
            _messageHash));
    }

    
    
}