
//Sort by price Ascending
import KittyItemMarket from "./KittyItemMarket"
 
 //returns 10 NFTs in increasing order of price
pub fun main(set : UInt64) : [UInt64] {
    
    var start = (set-1) * 10
    var end = set *10  
    var k=0
  
    let pricearr : [UInt64 ; 10]

    while start < end{
        pricearr[k] = KittyItemMarket.allIdsForPrice[start]
        start = start + 1
        k=k+1
    }
    
    return pricearr;
}