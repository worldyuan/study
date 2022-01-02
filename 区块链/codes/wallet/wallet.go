package wallet

import "crypto"

type Wallet struct {
	// 1、私钥
	PrivateKey crypto.PrivateKey
	// 2、公钥
	PublicKey  []byte
}

func NewWallet() *Wallet {
	privateKey, publicKey := newKeyPair()

	return Wallet{
		PrivateKey: privateKey,
		PublicKey: publicKey,
	}
}


func newKeyPair() () {

}