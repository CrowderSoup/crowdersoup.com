---
title: "Day 2: Fixing my Hugo BaseURL"
date: 2023-01-07T21:30:07 
categories:
  - Projects
tags:
  - projects
  - 100days
  - indieweb
  - hugo
---

Yesterday I embarked on 100 Days of IndieWeb. Blog first, distribution second.
Write first, edit later. I also wrote that I hoped to find/fix issues and
streamline my posting process.

[Bryce Wray][1] was kind enough to [point out][2] that I had an issue with
relative links in my RSS feed. I was able to fix the issue by setting the
BaseURL config value in my `config.toml`. The issue I had to tackle wasn't just
setting the value, I had to set it based on environment.

Hugo let's you set these values with [environment variables][3]. So in each
environment I set a variable that has the BaseURL set correctly.

Can't wait to see wait tomorrow brings me to fix!

<!-- LINKS  -->
[1]: https://fosstodon.org/@BryceWrayTX
[2]: https://fosstodon.org/@BryceWrayTX/109648324717497593
[3]: https://gohugo.io/getting-started/configuration/#configure-with-environment-variables

