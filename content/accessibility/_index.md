---
title: Web Accessibility
description: Ensuring devsec.tools is accessible to all users.
layout: single
---

## Goal

Our goal with web accessibility is to achieve [WGAG 2.2 AAA] compliance for web browsers which request it.

We're _almost_ there. We have a few small issues to work on (navigation links), and we are treating them with high priority.

## Overall settings

### Light/dark mode

If the user's settings prefer "dark mode" or "light mode", devsec.tools will adapt based on this preference.

<div class="border border-gray-300 dark:border-gray-700 rounded-lg py-1 px-4 mx-8 my-4 dark:prose-a:text-gray-300">

{{< svg path="svg/logo/apple.svg" class="configure-apple" >}} [Configure on macOS](https://support.apple.com/guide/mac-help/use-a-light-or-dark-appearance-mchl52e1c2d2/) • {{< svg path="svg/logo/windows.svg" class="configure-windows" >}} [Configure on Windows](https://support.microsoft.com/en-us/windows/personalize-your-colors-in-windows-3290d30f-d064-5cfe-6470-2fe9c6533e37) • {{< svg path="svg/logo/css.svg" class="configure-css" >}} [CSS Media Query](https://developer.mozilla.org/en-US/docs/Web/CSS/@media/prefers-color-scheme)

</div>

### Larger text

If the user's settings prefer larger text sizes, devsec.tools will adapt based on this preference.

<div class="border border-gray-300 dark:border-gray-700 rounded-lg py-1 px-4 mx-8 my-4 dark:prose-a:text-gray-300">

{{< svg path="svg/logo/apple.svg" class="configure-apple" >}} [Configure on macOS](https://support.apple.com/guide/mac-help/make-text-and-icons-bigger-mchld786f2cd/15.0/mac/15.0) • {{< svg path="svg/logo/windows.svg" class="configure-windows" >}} [Configure on Windows](https://support.microsoft.com/en-us/windows/make-windows-easier-to-see-c97c2b0d-cadb-93f0-5fd1-59ccfe19345d) • {{< svg path="svg/logo/css.svg" class="configure-css" >}} [CSS Media Query](https://developer.mozilla.org/en-US/docs/Web/CSS/font-size#rems)

</div>

### Higher Contrast (TODO)

If the user's settings prefer more contrast, devsec.tools will adapt based on this preference.

<div class="border border-gray-300 dark:border-gray-700 rounded-lg py-1 px-4 mx-8 my-4 dark:prose-a:text-gray-300">

{{< svg path="svg/logo/apple.svg" class="configure-apple" >}} [Configure on macOS](https://support.apple.com/guide/mac-help/change-display-settings-for-accessibility-unac089/15.0/mac/15.0) • {{< svg path="svg/logo/windows.svg" class="configure-windows" >}} [Configure on Windows](https://support.microsoft.com/en-us/windows/change-color-contrast-in-windows-fedc744c-90ac-69df-aed5-c8a90125e696) • {{< svg path="svg/logo/css.svg" class="configure-css" >}} [CSS Media Query](https://developer.mozilla.org/en-US/docs/Web/CSS/@media/prefers-contrast)

</div>

### Reduced motion (TODO)

If the user's settings prefer reduced motion (e.g., due to [vestibular disorders](https://www.a11yproject.com/posts/understanding-vestibular-disorders/)), devsec.tools will adapt based on this preference.

<div class="border border-gray-300 dark:border-gray-700 rounded-lg py-1 px-4 mx-8 my-4 dark:prose-a:text-gray-300">

{{< svg path="svg/logo/apple.svg" class="configure-apple" >}} [Configure on macOS](https://support.apple.com/guide/mac-help/stop-or-reduce-onscreen-motion-mchlc03f57a1/15.0/mac/15.0) • {{< svg path="svg/logo/windows.svg" class="configure-windows" >}} [Configure on Windows](https://support.microsoft.com/en-us/windows/make-it-easier-to-focus-on-tasks-0d259fd9-e9d0-702c-c027-007f0e78eaf2) • {{< svg path="svg/logo/css.svg" class="configure-css" >}} [CSS Media Query](https://developer.mozilla.org/en-US/docs/Web/CSS/@media/prefers-reduced-motion)

</div>

[WGAG 2.2 AAA]: https://www.w3.org/TR/WCAG22/

<!--
https://developer.mozilla.org/en-US/docs/Web/CSS/@media/prefers-reduced-transparency
https://support.apple.com/guide/mac-help/change-display-colors-easier-onscreen-mchl11ddd4b3/15.0/mac/15.0#mchl50014274
https://support.microsoft.com/en-us/windows/make-it-easier-to-focus-on-tasks-0d259fd9-e9d0-702c-c027-007f0e78eaf2
-->
