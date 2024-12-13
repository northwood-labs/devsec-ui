---
title: Counter with CBC-MAC (CCM)
description: ✅ Secure mode of operation
layout: learn-single

tls_part: mode

learn_more:
  - text: 'Block cipher'
    url: https://en.wikipedia.org/wiki/Block_cipher
    source: Wikipedia

  - text: 'A Critique of CCM'
    url: https://csrc.nist.gov/csrc/media/projects/block-cipher-techniques/documents/bcm/comments/800-38-series-drafts/ccm/rw_ccm_comments.pdf
    source: Research paper

---

## Summary

> [!NOTE]
> "CCM" is a two-pass acronym which stands for _Counter with CBC-MAC_. In-turn, "CBC-MAC" stands for _Cipher Block Chaining Message Authentication Code_.

[CCM] mode is a block cipher mode that combines counter mode for confidentiality with cipher block chaining message authentication code (CBC-MAC) for authentication. It is designed for block ciphers with a 128-bit block length and requires careful nonce selection to avoid security vulnerabilities. CCM mode is used in various standards like IEEE 802.11i, IPsec, and TLS 1.2 for authenticated encryption.

## Information

| Field        | Value                                                                             |
|--------------|-----------------------------------------------------------------------------------|
| Kind         | {{% param-kind %}}                                                                |
| Invented     | 2002 {{< svg "heroicons/solid/question-mark-circle.svg" "table-question-mark" >}} |
| Cracked      | -                                                                                 |
| Related tech | [Bluetooth Low Energy][BLE], [IPsec], [WPA2], [Zigbee]                            |

[BLE]: https://en.wikipedia.org/wiki/Bluetooth_Low_Energy
[CCM]: https://en.wikipedia.org/wiki/CCM_mode
[IPsec]: https://en.wikipedia.org/wiki/IPsec
[WPA2]: https://en.wikipedia.org/wiki/Wi-Fi_Protected_Access#WPA2
[Zigbee]: https://en.wikipedia.org/wiki/Zigbee
