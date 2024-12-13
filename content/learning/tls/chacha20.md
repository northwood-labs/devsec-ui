---
title: ChaCha20
description: ✅ Recommended encryption algorithm
layout: learn-single

tls_part: encryption-algo

learn_more:
  - text: 'The design of Chacha20'
    url: https://loup-vaillant.fr/tutorials/chacha20-design

  - text: 'ChaCha20-Poly1305 Cipher Suites for Transport Layer Security (TLS)'
    url: https://datatracker.ietf.org/doc/html/rfc7905
    source: IETF

  - text: 'ChaCha20 and Poly1305 for IETF Protocols'
    url: https://datatracker.ietf.org/doc/html/rfc8439
    source: IETF

  - text: 'RFC 7539-compliant implementation of the ChaCha20 stream cypher algorithm'
    url: https://github.com/marcizhu/ChaCha20
    source: GitHub

  - text: 'ChaCha20-Poly1305'
    url: https://en.wikipedia.org/wiki/ChaCha20-Poly1305
    source: Wikipedia

---

## Summary

[ChaCha20], a variant of [Salsa20], is a stream cipher utilizing add-rotate-XOR operations for security and efficiency. It offers a unique feature of efficiently seeking to any position in the key stream and has been adopted in various internet standards. Over _Salsa20_, it improves diffusion and performance, making it a more secure choice for cryptographic applications.

> [!TIP]
> This is a recommended algorithm.

## Information

| Field        | Value                                     |
|--------------|-------------------------------------------|
| Kind         | {{% param-kind %}}                        |
| Invented     | 2008                                      |
| Cracked      | -                                         |
| Related tech | [Linux kernel], [OpenSSH], [QUIC], [SPDY] |

[ChaCha20]: https://en.wikipedia.org/wiki/Salsa20#ChaCha_variant
[Linux kernel]: https://lwn.net/Articles/686033/
[OpenSSH]: https://en.wikipedia.org/wiki/OpenSSH
[QUIC]: https://en.wikipedia.org/wiki/QUIC
[Salsa20]: https://en.wikipedia.org/wiki/Salsa20
[SPDY]: https://en.wikipedia.org/wiki/SPDY
