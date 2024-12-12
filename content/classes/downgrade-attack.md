---
title: Downgrade Attack
description: Cryptographic attack which abandons a high-quality mode in favor of a lower-quality mode
layout: class

learn_more:
  - text: 'What are downgrade attacks?'
    url: https://www.crowdstrike.com/en-us/cybersecurity-101/cyberattacks/downgrade-attack/
    source: CrowdStrike

  - text: 'Downgrade Attacks: What They Are, How to Prevent Them'
    url: https://venafi.com/blog/preventing-downgrade-attacks/
    source: Venafi

  - text: 'What Is A Protocol Downgrade Attack? How It Works and Examples'
    url: https://www.twingate.com/blog/glossary/protocol%20downgrade%20attack
    source: Twingate

---

## Overview

From [Wikipedia]:

> A downgrade attack is a form of cryptographic attack on a computer system or communications protocol that makes it abandon a high-quality mode of operation (e.g., an encrypted connection) in favor of an older, lower-quality mode of operation (e.g., cleartext) that is typically provided for backward compatibility with older systems.
>
> An example of such a flaw was found in OpenSSL that allowed the attacker to negotiate the use of a lower version of TLS between the client and server. This is one of the most common types of downgrade attacks. Opportunistic encryption protocols such as STARTTLS are generally vulnerable to downgrade attacks, as they, by design, fall back to unencrypted communication. Websites which rely on redirects from unencrypted HTTP to encrypted HTTPS can also be vulnerable to downgrade attacks, as the initial redirect is not protected by encryption.

[Wikipedia]: https://en.wikipedia.org/wiki/Downgrade_attack
