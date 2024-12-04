---
title: Diffie-Hellman, Ephemeral (DHE)
description: Vulnerable key exchange
layout: learn-single

vulns:
  - dheatattack
  - logjam
  - racoon

learn_more:
  - text: 'Diffie-Hellman problem'
    url: https://en.wikipedia.org/wiki/Diffie–Hellman_problem
    source: Wikipedia

  - text: 'Deprecating Obsolete Key Exchange Methods in TLS 1.2'
    url: https://datatracker.ietf.org/doc/html/draft-ietf-tls-deprecate-obsolete-kex/
    source: IETF

---

## Summary

The older [Diffie-Hellman] (DH, DHE) key exchange algorithms are vulnerable to a handful of security vulnerabilities. The newer _elliptic-curve_ (ECDHE) key exchange algorithms are more secure and should be strongly preferred.

This is the ephemeral version, which… @TODO

[Diffie-Hellman]: https://en.wikipedia.org/wiki/Diffie–Hellman_key_exchange
