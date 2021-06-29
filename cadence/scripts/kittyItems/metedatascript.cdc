//scirpt to return metadata
import KittyItems form "./KittyItems"

pub fun main(id : UInt64 , address : Address) : @KittyItems.metaData { 

    let acc = getAccount(address)

    let collectionRef = account.getCapability(KittyItems.CollectionPublicPath)!
        .borrow<&{NonFungibleToken.CollectionPublic}>()
        ?? panic("Could not borrow capability from public collection")    

    return collectionRef.ownedNFTs[id].metaData
}

