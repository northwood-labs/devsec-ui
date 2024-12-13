---
title: Elliptic Curve Diffie-Hellman (ECDH)
description: ✅ Secure key exchange
layout: learn-single

tls_part: key-exchange

learn_more:
  - text: 'Diffie-Hellman problem'
    url: https://en.wikipedia.org/wiki/Diffie–Hellman_problem
    source: Wikipedia

  # - text: ''
  #   url:
  #   source:

---

## Summary

The [Diffie-Hellman] key exchange is a cryptographic method enabling two parties to establish a shared secret key over an insecure channel. The shared secret is calculated by each party using their private key and the other party’s public key, resulting in a value that is difficult to compute without knowledge of both private integers.

This approach is the foundation of all modern-day [public-key cryptography]. It also forms the basis of [Forward secrecy] in TLS connections.

The newer [elliptic-curve][ECC] (ECDHE) key exchange algorithms are more secure and should be strongly preferred.

## Information

| Field     | Value              |
|-----------|--------------------|
| Kind      | {{% param-kind %}} |
| Invented  |                    |
| Ephemeral | _No_               |

[Diffie-Hellman]: https://en.wikipedia.org/wiki/Diffie–Hellman_key_exchange
[ECC]: https://en.wikipedia.org/wiki/Elliptic-curve_cryptography
[Forward secrecy]: https://en.wikipedia.org/wiki/Forward_secrecy
[public-key cryptography]: https://en.wikipedia.org/wiki/Public-key_cryptography
