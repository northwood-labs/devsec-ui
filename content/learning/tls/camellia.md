---
title: Camellia
description: ✅ Secure encryption algorithm
layout: learn-single

tls_part: encryption-algo

learn_more:
  - text: 'Official English-Language Camellia Homepage'
    url: https://info.isl.ntt.co.jp/crypt/eng/camellia/
    source: NTT

  - text: 'A Description of the Camellia Encryption Algorithm'
    url: https://datatracker.ietf.org/doc/html/rfc3713
    source: IETF

  - text: 'Addition of the Camellia Cipher Suites to Transport Layer Security (TLS)'
    url: https://datatracker.ietf.org/doc/html/rfc6367
    source: IETF

  - text: 'Camellia source code'
    url: https://embeddedsw.net/Cipher_Reference_Home.html#CAMELLIA

---

## Summary

[Camellia] is a symmetric key block cipher developed by _Mitsubishi Electric_ and _NTT of Japan_, approved for use by [ISO/IEC][ISO 18033-3], [NESSIE], and [CRYPTREC].

It is considered a modern, safe cipher with security levels comparable to [AES]({{% relref "AES" %}}). Camellia has been adopted in various security libraries, protocols, and applications, including TLS, IPsec, Kerberos, and OpenPGP.

It became an international standard in [ISO 18033-3].

## Information

| Field        | Value                                                         |
|--------------|---------------------------------------------------------------|
| Kind         | {{% param-kind %}}                                            |
| Invented     | 2000                                                          |
| Cracked      | -                                                             |
| Ephemeral    | _Yes_                                                         |
| Related tech | [IPsec], [Kerberos], [PGP], [PKCS #11], [S/MIME], [VeraCrypt] |

[Camellia]: https://en.wikipedia.org/wiki/Camellia_(cipher)
[CRYPTREC]: https://en.wikipedia.org/wiki/CRYPTREC
[IPsec]: https://en.wikipedia.org/wiki/IPsec
[ISO 18033-3]: https://www.iso.org/standard/54531.html
[Kerberos]: https://en.wikipedia.org/wiki/Kerberos_(protocol)
[NESSIE]: https://en.wikipedia.org/wiki/NESSIE
[PGP]: https://pgpkeys.org/docs/pgpfaq.html#HDPK
[PKCS #11]: https://docs.oasis-open.org/pkcs11/pkcs11-curr/v2.40/pkcs11-curr-v2.40.html
[S/MIME]: https://datatracker.ietf.org/doc/html/rfc8551
[VeraCrypt]: https://en.wikipedia.org/wiki/VeraCrypt
