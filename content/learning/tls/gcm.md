---
title: Galois/Counter Mode (GCM)
description: ✅ Recommended mode of operation
layout: learn-single

tls_part: mode

learn_more:
  - text: 'The Galois/Counter Mode of Operation (GCM)'
    url: https://luca-giuzzi.unibs.it/corsi/Support/papers-cryptography/gcm-spec.pdf
    source: Research paper

  - text: 'Recommendation for Block Cipher Modes of Operation: Galois/Counter Mode (GCM) and GMAC'
    url: https://csrc.nist.gov/pubs/sp/800/38/d/final
    source: NIST

  - text: 'AES Galois Counter Mode (GCM) Cipher Suites for TLS'
    url: https://datatracker.ietf.org/doc/html/rfc5288
    source: IETF

  - text: 'Block cipher'
    url: https://en.wikipedia.org/wiki/Block_cipher
    source: Wikipedia

---

## Summary

[Galois/Counter Mode][GCM] (GCM) is a mode of operation for symmetric key block ciphers that provides both data confidentiality and authenticity, enabling efficient and parallelizable encryption and authentication.

GCM is an authenticated encryption with associated data ([AEAD]) scheme, which ensures the integrity of both the encrypted data and any associated metadata. It is known for its high performance and minimal computational overhead.

Proper management of initialization vectors (IVs), which must be unique for each encryption with the same key, is critical to maintaining its security, as reusing an IV can compromise both confidentiality and integrity.

## Information

| Field        | Value                                                                             |
|--------------|-----------------------------------------------------------------------------------|
| Kind         | {{% param-kind %}}                                                                |
| Invented     | 2004 {{< svg "heroicons/solid/question-mark-circle.svg" "table-question-mark" >}} |
| Cracked      | -                                                                                 |
| Related tech | [Fibre Channel], [IPsec], [MACsec], [SSH], [WiGig], [WPA3]                        |

[AEAD]: https://en.wikipedia.org/wiki/Authenticated_encryption
[Fibre Channel]: https://en.wikipedia.org/wiki/Fibre_Channel
[GCM]: https://en.wikipedia.org/wiki/Galois/Counter_Mode
[IPsec]: https://en.wikipedia.org/wiki/IPsec
[MACsec]: https://en.wikipedia.org/wiki/MACsec
[SSH]: https://en.wikipedia.org/wiki/Secure_Shell
[WiGig]: https://en.wikipedia.org/wiki/WiGig
[WPA3]: https://en.wikipedia.org/wiki/Wi-Fi_Protected_Access#WPA3
