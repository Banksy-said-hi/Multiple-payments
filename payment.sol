pragma solidity 0.8.0;

contract multiplePayment {
    address payable[] public  holders;
    
    function enroll() public {
        holders.push(payable(msg.sender));
    }
    
    function fuding() public payable returns(uint) {
        return address(this).balance;
    }
    
    function payback() public {
        for (uint i=0; i<holders.length; i++) {
            holders[i].transfer(10000000000000000000);
        }
    }
}
