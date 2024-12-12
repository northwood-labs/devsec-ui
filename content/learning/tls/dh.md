---
title: Diffie-Hellman (DH)
description: ❌ Vulnerable key exchange
layout: learn-single

tls_part: key-exchange

vulns:
  - logjam
  - raccoon

learn_more:
  - text: 'Diffie-Hellman problem'
    url: https://en.wikipedia.org/wiki/Diffie–Hellman_problem
    source: Wikipedia

  - text: 'Deprecating Obsolete Key Exchange Methods in TLS 1.2'
    url: https://datatracker.ietf.org/doc/html/draft-ietf-tls-deprecate-obsolete-kex/
    source: IETF

---

## Summary

The [Diffie-Hellman] key exchange is a cryptographic method enabling two parties to establish a shared secret key over an insecure channel. The shared secret is calculated by each party using their private key and the other party’s public key, resulting in a value that is difficult to compute without knowledge of both private integers.

This approach is the foundation of all modern-day [public-key cryptography]. It also forms the basis of [Forward secrecy] in TLS connections.

The newer [elliptic-curve][ECC] (ECDHE) key exchange algorithms are more secure and should be strongly preferred.

## Information

| Field        | Value              |
|--------------|--------------------|
| Kind         | {{% param-kind %}} |
| Invented     | 1976               |
| Cracked¹     | 2015               |
| Ephemeral    | _No_               |
| Related tech | [PGP]              |

¹ While not strictly "cracked", research has shown that the hacking agencies of nation-states can afford the compute resources required to crack these types of encrypted messages — up through 1024-bit keys. 2048-bit keys are, at present, still strong enough to make cracking mathematically impossible (pre-<a href="https://en.wikipedia.org/wiki/Quantum_computing">Quantum computing</a>).

[Diffie-Hellman]: https://en.wikipedia.org/wiki/Diffie–Hellman_key_exchange
[ECC]: https://en.wikipedia.org/wiki/Elliptic-curve_cryptography
[Forward secrecy]: https://en.wikipedia.org/wiki/Forward_secrecy
[public-key cryptography]: https://en.wikipedia.org/wiki/Public-key_cryptography
[PGP]: https://pgpkeys.org/docs/pgpfaq.html#HDPK
