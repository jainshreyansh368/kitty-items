
//Sort by price descending
import kittyItemMarket from "./KittyItemMarket"
 
//Script to get 10 NFTs in Decreasing price order
pub fun main(set : UInt64) : [UInt64]{

    var k = 0
    var n = KittyItemMarket.allIdsForPrice.length - 1 
    var start = n - ((set - 1) * 10)
    var end = n - (set * 10)
    
    let pricearr : [UInt64 ; 10]
    
    while start > end {
        pricearr[i] = KittyItemMarket.allIdsForPrice[start]]
        start = start - 1 
        i = i + 1 
    }
    
    return pricearr;
}
