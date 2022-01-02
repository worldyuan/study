package wallet

import (
	"crypto"
	"crypto/ecdsa"
	"crypto/elliptic"
	"crypto/rand"
	"crypto/sha256"
	"log"
)

const (
	checksumLength = 4
	version = byte(0x00)
)


type Wallet struct {
	// 1、私钥
	PrivateKey ecdsa.PrivateKey
	// 2、公钥
	PublicKey  []byte
}

func (w *Wallet) Address() {
	pubHash := PublicKeyHash(w.PublicKey)

	versionedHash := append([]byte{version}, pubHash...)
	checksum := Checksum()
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
	private,err := ecdsa.GenerateKey(curve, rand.Reader)
	if err != nil {
		log.Panic(err)
	}
	pubKey := append(private.PublicKey.X.Bytes(), private.PublicKey.Y.Bytes()...)
	return *private, pubKey
}

func PublicKeyHash(publickey []byte) []byte {
	hashedPublicKey := sha256.Sum256(publickey)

	hasher := crypto.RIPEMD160.New()
	_, err := hasher.Write(hashedPublicKey[:])
	if err != nil {
		log.Panic(err)
	}
	publicRipeMd := hasher.Sum(nil)
	return publicRipeMd
}

func Checksum(ripeMdHash []byte) []byte{
	firstHash := sha256.Sum256(ripeMdHash)
	secondHash := sha256.Sum256(firstHash[:])
	return secondHash[:checksumLength]
}