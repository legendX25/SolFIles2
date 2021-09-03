pragma solidity ^0.8.7;
contract Tshirt {
    string orderStatus;
    string orderid;
    int quantity;
    string payment;


    function setOrder(string memory _order, int _qty) public {
        orderid = _order;
        quantity = _qty;
        
    }
    
    function setAcceptedStatus() public {
        orderStatus="Order Accepted";
    }
    
    
    function getStatusOrder() public view returns(string memory,string memory ,int)  {
        return (orderStatus,orderid,quantity);
    }

    
    function OrderCompleteStatus(int price) public view returns (int){
        return quantity*price;
    }
    
    function setPayStatus() public {
        payment="Payment Done";
    }
    
    function getPayStatus() public view returns(string memory)  {
        return payment;
    }
}