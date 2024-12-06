---
title: TLS and Cipher Suites
description: ...
# layout: learn-single
layout: list

good_better_best:
  1abysmal:
    title: Not secure at all
    description: '<span class="ui-badge-error-wrap">SSLv2</span> <span class="ui-badge-error-wrap">SSLv3</span>'
  2better:
    title: Security broken
    description: '<span class="ui-badge-alert-wrap">TLS 1.0</span> <span class="ui-badge-alert-wrap">TLS 1.1</span>'
  3best:
    title: Safe and secure
    description: '<span class="ui-badge-success-wrap">TLS 1.2</span>+ <span class="ui-badge-success-wrap">TLS 1.3</span>'

---

## Summary

Security never stands still. As soon as new methods are designed to secure data on the internet, there is someone working on ways to crack-open that security. Things that were secure 20 years ago are not secure today.

In {{% year %}}, there are only two configurations which are considered fully secure, and both should be offered to end-users:

### TLS 1.3

[TLS 1.3] is the most modern version of _Transport Layer Security_. The specification shipped in August 2018, and defines 3 cipher suites which are non-configurable.

### TLS 1.2 with _Forward Secrecy_

[TLS 1.2] is the next-oldest version. The specification shipped in August 2008, and defines several configurable cipher suites — most of which are _no longer_ secure, but there are still a good number that are compatible for the open web.

## Parts of a cipher suite

_Broadly_ speaking, there are four components to a cipher suite (as used in TLS):

* Key exchange
* Authentication signature
* Encryption algorithm
* Hashing function

If any one part of a cipher suite has an issue, it can compromise the integrity of the entire cipher suite.

## Known issues in classes of cipher suites

Security vulnerabilities can impact _classes_ of cipher suites.

[TLS 1.2]: https://datatracker.ietf.org/doc/html/rfc5246
[TLS 1.3]: https://datatracker.ietf.org/doc/html/rfc8446
