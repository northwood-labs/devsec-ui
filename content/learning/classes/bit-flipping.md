---
title: Bit-Flipping Attacks
description: Cryptographic cipher attack
layout: class

learn_more:
  - text: 'What Is A Bit Flipping Attack? How It Works & Examples'
    url: https://www.twingate.com/blog/glossary/bit-flipping-attack
    source: Twingate

---

## Overview

From [Wikipedia]:

> A bit-flipping attack is an attack on a cryptographic cipher in which the attacker can change the ciphertext in such a way as to result in a predictable change of the plaintext, although the attacker is not able to learn the plaintext itself. Note that this type of attack is not—directly—against the cipher itself (as cryptanalysis of it would be), but against a particular message or series of messages. In the extreme, this could become a Denial of service attack against all messages on a particular channel using that cipher.
>
> The attack is especially dangerous when the attacker knows the format of the message. In such a situation, the attacker can turn it into a similar message but one in which some important information is altered. For example, a change in the destination address might alter the message route in a way that will force re-encryption with a weaker cipher, thus possibly making it easier for an attacker to decipher the message.
>
> When applied to digital signatures, the attacker might be able to change a promissory note stating "I owe you $10.00" into one stating "I owe you $10,000".

[Wikipedia]: https://en.wikipedia.org/wiki/Bit-flipping_attack
