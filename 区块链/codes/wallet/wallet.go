package wallet

import (
	"crypto"
	"crypto/ecdsa"
	"crypto/elliptic"
	"crypto/rand"
)

type Wallet struct {
	// 1、私钥
	PrivateKey ecdsa.PrivateKey
	// 2、公钥
	PublicKey  []byte
}

func NewWallet() *Wallet {
	privateKey, publicKey := newKeyPair()
	return &Wallet{
		PrivateKey: privateKey,
		PublicKey: publicKey,
	}
}


func newKeyPair() (ecdsa.PrivateKey, []byte) {
	curve := elliptic.P256()
	te,err := ecdsa.GenerateKey(curve, rand.Reader)
	if err != nil {
		
	}
	return nil
}