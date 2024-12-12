---
title: Brute Force against Export-Grade Encryption
description: Encryption can be broken in a matter of days using a single computer
layout: class

# learn_more:
#   - text: 'What Is A Bit Flipping Attack? How It Works & Examples'
#     url: https://www.twingate.com/blog/glossary/bit-flipping-attack
#     source: Twingate

---

## Overview

From [Wikipedia]:

> Netscape's SSL technology was widely adopted as a method for protecting credit card transactions using public key cryptography. Netscape developed two versions of its web browser. The "U.S. edition" supported full size (typically 1024-bit or larger) RSA public keys in combination with full size symmetric keys (secret keys) (128-bit RC4 or 3DES in SSL 3.0 and TLS 1.0).
>
> The "International Edition" had its effective key lengths reduced to 512 bits and 40 bits respectively (RSA_EXPORT with 40-bit RC2 or RC4 in SSL 3.0 and TLS 1.0). Acquiring the 'U.S. domestic' version turned out to be sufficient hassle that most computer users, even in the U.S., ended up with the 'International' version, whose weak 40-bit encryption can currently be broken in a matter of days using a single computer. A similar situation occurred with Lotus Notes for the same reasons.

[Wikipedia]: https://en.wikipedia.org/wiki/Export_of_cryptography_from_the_United_States
