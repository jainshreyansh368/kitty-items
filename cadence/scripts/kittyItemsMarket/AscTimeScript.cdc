
//Sort by time latest 10
import kittyItemMarket from "./KittyItemMarket"
 
//Script to get 10 latest listed NFTs in sets
pub fun main(set : UInt64) : [UInt64]{

    var k = 0
    var n = KittyItemMarket.allIdsForTimeStamps.length - 1 
    var start = n - ((set - 1) * 10)
    var end = n - (set * 10)
    
    let timearr : [UInt64 ; 10]
    
    while start > end {
        timearr[i] = KittyItemMarket.allIdsForTimeStamps[start]]
        start = start - 1 
        i = i + 1 
    }
    
    return timearr;
}
