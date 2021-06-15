# Encryption/Decryption practice in GCP [basics]: Hello KMS!
## Commands used in articles


### Create keyring
```sh
gcloud kms keyrings create documents --location=global
```

### Create key
```sh
gcloud kms keys create message --purpose=encryption --location=global --keyring=documents
```

### Encrypt textfile
```sh
gcloud kms encrypt --keyring documents --key message --location=global --ciphertext-file=encrypted_msg \ 
--plaintext-file=text.txt
```

### Add permission to service account
```sh
gcloud projects add-iam-policy-binding <project id> \
--member=serviceAccount:<service account> \
--roles/cloudkms.cryptoKeyEncrypterDecrypter 
```

### Decrypt data
```sh
gcloud kms decrypt --keyring documents --key message --location=global --ciphertext-file=encrypted_msg \
--plaintext-file=decrypted_text.txt
```