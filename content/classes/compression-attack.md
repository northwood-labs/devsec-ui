---
title: Compression Attack
description: Attacker can know whether the page contains data by observing the encrypted stream
layout: class

learn_more:
  - text: 'What Are Compression Side Channel Attacks?'
    url: https://venafi.com/blog/what-are-compression-side-channel-attacks/
    source: Venafi

  - text: 'How are websites actually mititating BREACH? (HTTPS + compression)'
    url: https://security.stackexchange.com/questions/222677/how-are-websites-actually-mititating-breach-https-compression
    source: Stack Exchange

  - text: 'The VORACLE attack vulnerability'
    url: https://openvpn.net/security-advisory/the-voracle-attack-vulnerability/
    source: OpenVPN

---

## Overview

From [Wikipedia]:

> Compression allows a form of chosen plaintext attack to be performed: if an attacker can inject any chosen content into the page, they can know whether the page contains their given content by observing the size increase of the encrypted stream. If the increase is smaller than expected for random injections, it means that the compressor has found a repeat in the text, i.e. the injected content overlaps the secret information. This is the idea behind CRIME.

[Wikipedia]: https://en.wikipedia.org/wiki/HTTP_compression#Security_implications
