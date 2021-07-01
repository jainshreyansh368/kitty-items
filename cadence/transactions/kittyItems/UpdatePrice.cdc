
import KittyItems from "./KittyItems.cdc"

transactions (signer : Address, id :UInt64, newPrice : UFix64 ) {

    execute()
    {
        signer = getAccount(signer)

        let owner = signer
            .getCapability(KittyItems.CollectionPublicPath)!
            .borrow<&{NonFungibleToken.CollectionPublic}>()
            ?? panic("Could not get receiver reference to the NFT Collection")    
            
        owner.ownedNFTs[id].price = newPrice    
    }
}