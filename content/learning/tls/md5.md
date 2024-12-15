---
title: Message Digest 5 (MD5)
description: ❌ Vulnerable hashing function
layout: learn-single

tls_part: hash

learn_more:
  - text: 'Construct MD5 Collisions Using Just A Single Block Of Message'
    url: https://web.archive.org/web/20241215055808/https://eprint.iacr.org/2010/643.pdf
    source: Research paper

  - text: 'Colliding X.509 Certificates based on MD5-collisions'
    url: https://web.archive.org/web/20241215055805/https://bdeweger.win.tue.nl/CollidingCertificates/

  - text: 'The MD5 Message-Digest Algorithm'
    url: https://datatracker.ietf.org/doc/html/rfc1321
    source: IETF

  - text: 'MD5 vulnerable to collision attacks'
    url: https://www.kb.cert.org/vuls/id/836068
    source: Carnegie Mellon University

  - text: 'Single-block collision for MD5'
    url: https://marc-stevens.nl/research/md5-1block-collision/
    source: Research paper

  - text: 'Forging SSL Certificates'
    url: https://www.schneier.com/blog/archives/2008/12/forging_ssl_cer.html
    source: Bruce Schneier

---

## Summary

[MD5] is a widely used hash function that produces a 128-bit hash value, but it has been found to suffer from extensive vulnerabilities, including collision attacks.

Collision attacks allow for the creation of pairs of inputs with the same hash, making MD5 unsuitable for applications requiring collision resistance, such as digital signatures. Despite its well-documented weaknesses and deprecation by security experts, MD5 continues to be widely used.

Any cipher suite with `MD5` in the name should be avoided.

## Information

| Field    | Value              |
|----------|--------------------|
| Kind     | {{% param-kind %}} |
| Invented | 1991               |
| Cracked  | 2004               |

[MD5]: https://en.wikipedia.org/wiki/MD5
