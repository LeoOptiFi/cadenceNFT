emulate: 
	flow project start-emulator --config-path=flow.json --verbose

init:
	flow accounts create --key e72f093d0265c6db6226221eeba446bae68c4e0159d49d388d33f3e3ca27c2afa5faddfeaa6c34cf1d0c19041b7e154fe9b87799e0c6a817dc429febe934e4d8 --signer emulator-account

deployNFT: 
	flow accounts add-contract ExampleNFT ./cadence/contracts/ExampleNFT.cdc 

mintNFT:
	flow transactions send ./transactions/MintNFT.cdc --signer emulator-account

setup_account:
	flow transactions send ./transactions/setup_account.cdc --signer test

transfer_nft:
	flow transactions send ./transactions/transfer_nft.cdc --signer emulator-account 

print_1_nft:
	flow scripts execute ./scripts/print_1_nft.cdc

print_nft:
	flow scripts execute ./scripts/print_nft.cdc
