---
title: TLS and Cipher Suites
description: Reduce the attack surface of your website by enabling secure handshakes
layout: list

good_better_best:
  1abysmal:
    title: Not secure at all
    description: '<span class="ui-badge-error-wrap">SSLv2</span> <span class="ui-badge-error-wrap">SSLv3</span>'
  2better:
    title: Security broken
    description: '<span class="ui-badge-error-wrap">TLS 1.0</span> <span class="ui-badge-error-wrap">TLS 1.1</span>'
  3best:
    title: Safe and secure
    description: '<span class="ui-badge-success-wrap">TLS 1.2</span>+ <span class="ui-badge-success-wrap">TLS 1.3</span>'

---

## Summary

Security never stands still. As soon as new methods are designed to secure data on the internet, there is someone working on ways to crack-open that security. Things that were secure 20 years ago are not secure today.

<p class="not-prose text-xl py-4 font-semibold">The 2010s were a terrible decade for TLS security.</p>

In [TLS Vulnerabilities]({{% relref "vulns" %}}), we list a number of known vulnerabilities in cipher suites — most of which were discovered between 2010–2019. This triggered the need to radically shift how we approach security on the web.

Rather than continuing to allow access to older cipher suites with outdated security in order to allow older clients and web browsers to connect, the lessons from the 2010s taught us that it's the _future or bust_.

In {{% year %}}, there are only two configurations which are considered fully secure, and both should be offered to end-users:

## Recommended settings

### TLS versions

* <span class="ui-badge-success-wrap">{{% svg-check %}} TLS 1.3</span>+ <span class="ui-badge-success-wrap">{{% svg-check %}} TLS 1.2</span>.

* <span class="ui-badge-error-wrap">{{% svg-x %}} TLS 1.1</span>, <span class="ui-badge-error-wrap">{{% svg-x %}} TLS 1.0</span>, <span class="ui-badge-error-wrap">{{% svg-x %}} SSLv3</span>, and <span class="ui-badge-error-wrap">{{% svg-x %}} SSLv2</span>.

### TLS 1.3 cipher suites

In order to simplify configuration and increase security, [TLS 1.3] has _only_ three cipher suites which are meant to be non-configurable.

1. <span class="ui-badge-success-wrap">{{% svg-check %}} TLS_AES_128_GCM_SHA256</span>

1. <span class="ui-badge-success-wrap">{{% svg-check %}} TLS_AES_256_GCM_SHA384</span>

1. <span class="ui-badge-success-wrap">{{% svg-check %}} TLS_CHACHA20_POLY1305_SHA256</span>

### TLS 1.2 cipher suites with _Forward Secrecy_

#### Recommended

[TLS 1.2] carried-forward the habit of allowing administrators to configure which cipher suites to support, which led to _several_ security vulnerabilies being exposed during the 2010s.

As a result, these are the only cipher suites with no known vulnerabilities left, and are likely to work with most server software.

1. <span class="ui-badge-success-wrap">{{% svg-check %}} TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256</span>

1. <span class="ui-badge-success-wrap">{{% svg-check %}} TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384</span>

1. <span class="ui-badge-success-wrap">{{% svg-check %}} TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256</span>

These are equivalent to the cipher suite identifiers used in **TLS 1.3**. The only difference being that they specify the key exchange (`ECDHE`) and the authenticating signing mechanism (`ECDSA`).

#### Tolerable

The following cipher suites are also **secure**, and you can add them **in addition to** the _Recommended_ cipher suites. However they aren't **recommended** because _RSA Authentication Signing_ with keys over 2048 bits can have a notable impact to performance.

1. <span class="ui-badge-success-wrap">{{% svg-check %}} TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256</span>

1. <span class="ui-badge-success-wrap">{{% svg-check %}} TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384</span>

1. <span class="ui-badge-success-wrap">{{% svg-check %}} TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256</span>

## Parts of a cipher suite

If any one part of a cipher suite has an issue, it can compromise the integrity of the entire cipher suite.

[TLS 1.2]: https://datatracker.ietf.org/doc/html/rfc5246
[TLS 1.3]: https://datatracker.ietf.org/doc/html/rfc8446
