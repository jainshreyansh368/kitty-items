
//Sort by time descending
import KittyItemMarket from "./KittyItemMarket"
 
 //returns oldest 10 NFTs in sets
pub fun main(set : UInt64) : [UInt64] {
    
    var start = (set-1) * 10
    var end = set *10  
    var k=0
  
    let timearr : [UInt64 ; 10]

    while start < end{
        timearr[k] = KittyItemMarket.allIdsForTimeStamps[start]
        start = start + 1
        k=k+1
    }
    
    return timearr;
}
