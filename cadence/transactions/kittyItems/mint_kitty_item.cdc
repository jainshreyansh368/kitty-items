import NonFungibleToken from 0x4fc019cea9fc4817
import KittyItems from 0x4fc019cea9fc4817

// This transction uses the NFTMinter resource to mint a new NFT.
//
// It must be run with the account that has the minter resource
// stored at path /storage/NFTMinter.

transaction(recipient: Address, title: String, artistAddress: Address, description: String, typeID: UInt64, edition: UInt64, maxEdition: UInt64, price: UFix64, timeStamp: UInt64) {
    
    // local variable for storing the minter reference
    let minter: &KittyItems.NFTMinter

    prepare(signer: AuthAccount) {

        // borrow a reference to the NFTMinter resource in storage
        self.minter = signer.borrow<&KittyItems.NFTMinter>(from: KittyItems.MinterStoragePath)
            ?? panic("Could not borrow a reference to the NFT minter")
    }

    execute {
        // get the public account object for the recipient
        let recipient = getAccount(recipient)

        // borrow the recipient's public NFT collection reference
        let receiver = recipient
            .getCapability(KittyItems.CollectionPublicPath)!
            .borrow<&{NonFungibleToken.CollectionPublic}>()
            ?? panic("Could not get receiver reference to the NFT Collection")

        // mint the NFT and deposit it to the recipient's collection
        self.minter.mintNFT(recipient: receiver, title: String, artistAddress: Address, description: String, typeID: UInt64, edition: UInt64, maxEdition: UInt64, price: UFix64, timeStamp: UInt64)
    }
}
