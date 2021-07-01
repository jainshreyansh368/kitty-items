//Update price arrray
//To be calle after updatePrice transaction on KittyItems
import KittyItemsMarket from "./KittyItemsMarket.cdc"

transaction(id : UInt64 , price : UFix64) { 
    KittyItemsMarket.updatePrice(id , price)
}