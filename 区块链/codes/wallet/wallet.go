package wallet

import "crypto"

type Wallet struct {
	// 1、私钥
	crypto.PrivateKey
}