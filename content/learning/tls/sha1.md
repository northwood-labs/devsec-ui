---
title: Secure Hash Algorithm 1 (SHA-1)
description: ❌ Vulnerable hashing function
layout: learn-single

tls_part: hash

learn_more:
  - text: 'Secure Hash Standard'
    url: https://csrc.nist.gov/pubs/fips/180-1/final
    source: NIST

  - text: 'Transitions: Recommendation for Transitioning the Use of Cryptographic Algorithms and Key Lengths'
    url: https://csrc.nist.gov/pubs/sp/800/131/a/final
    source: NIST

  - text: 'US Secure Hash Algorithm 1 (SHA1)'
    url: https://datatracker.ietf.org/doc/html/rfc3174
    source: IETF

  - text: 'Migrate Git from SHA-1 to a stronger hash function.'
    url: https://git-scm.com/docs/hash-function-transition
    source: Git

  - text: 'SHA-1 Transition Plan'
    url: https://wiki.mercurial-scm.org/SHA1TransitionPlan
    source: Mercurial

  - text: 'Library and command line tool to detect SHA-1 collision in a file'
    url: https://github.com/cr-marcstevens/sha1collisiondetection
    source: GitHub

  - text: 'SHA-1 and DNSSEC validation'
    url: https://www.dns.cam.ac.uk/news/2020-02-14-sha-mbles.html
    source: University of Cambridge

  - text: 'PGP keys, software security, and much more threatened by new SHA1 exploit'
    url: https://arstechnica.com/information-technology/2020/01/pgp-keys-software-security-and-much-more-threatened-by-new-sha1-exploit/
    source: Ars Technica

---

## Summary

[SHA-1] is a cryptographic hash function that produces a 160-bit hash value, but has been cryptographically broken and is no longer considered secure.

There were some [early cracks in the SHA-1 foundation][cracks] in the early 2000s. [NIST started the deprecation of SHA-1 in 2011][NIST], and the [CA Browser Forum deprecated SHA-1 certificates in 2014][cab]. [Google], [Microsoft], and [Mozilla] had public deprecation processes they were following when it was announced in 2017 that [SHA-1 had been fully cracked][shattered]. [Chosen-prefix collisions were proven in SHA-1][shambles] in 2020.

While still used in some applications, it is recommended to replace SHA-1 with [SHA-2]({{% relref "sha2" %}}) due to practical chosen-prefix attacks.

Any cipher suite with `SHA` (specifically `_SHA_`) in the name should be avoided.

## Information

| Field        | Value                                                       |
|--------------|-------------------------------------------------------------|
| Kind         | {{% param-kind %}}                                          |
| Invented     | 1991                                                        |
| Cracked      | 2017                                                        |
| Related tech | [DNSSEC], [Git], [GnuPG], [Mercurial], [OpenSSH], [OpenSSL] |

[cab]: https://cabforum.org/2014/10/16/ballot-118-sha-1-sunset-passed/
[cracks]: https://www.schneier.com/blog/archives/2005/02/cryptanalysis_o.html
[DNSSEC]: https://www.dns.cam.ac.uk/news/2020-02-14-sha-mbles.html
[Git]: https://git-scm.com/docs/hash-function-transition
[GnuPG]: https://www.gnupg.org/faq/gnupg-faq.html#no_best_algo
[Google]: https://security.googleblog.com/2015/12/an-update-on-sha-1-certificates-in.html
[Mercurial]: https://wiki.mercurial-scm.org/SHA1TransitionPlan
[Microsoft]: https://blogs.windows.com/msedgedev/2016/04/29/sha1-deprecation-roadmap/
[Mozilla]: https://blog.mozilla.org/security/2017/02/23/the-end-of-sha-1-on-the-public-web/
[NIST]: https://csrc.nist.gov/pubs/sp/800/131/a/final
[OpenSSH]: https://www.openssh.com/txt/release-8.2
[OpenSSL]: https://github.com/openssl/openssl/commit/68436f0a8964e911eb4f864bc8b31d7ca4d29585
[SHA-1]: https://en.wikipedia.org/wiki/SHA-1
[shambles]: https://sha-mbles.github.io
[shattered]: https://shattered.io
