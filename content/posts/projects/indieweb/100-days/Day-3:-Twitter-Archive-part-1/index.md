---
title: "Day 3: Twitter Archive part 1"
date: 2023-01-08T19:41:18 
categories:
  - Projects
tags: 
  - projects
  - indieweb
  - 100days
  - twitter
  - archive
  - golang
---

A big part of owning my content is preserving it. I have over a decades worth
of content hosted exclusively on Twitter. I'd like to change that! After all,
that's what the IndieWeb is all about.

The first step was requesting and downloading all my content from the bird
site. Once that was done I used the [Twitter Archive Parser][1] from [Tim Hutton][2].
From there is where MY story begins.

Tim's parser takes your twitter archive and turns it into Markdown. However,
I wanted to have each tweet be its own page, and I wanted each of them to be
Hugo posts. To accomplish this I'm writing my own script (in Go) to take the
output from Tim's parser and make Hugo posts for each tweet.

Why? Because I want to! You can take a look at [my code][3] if you'd like, but
be warned that as of today it is VERY much a work in progress. I'm just trying
to get started and hacking together something in my spare time with whatever
leftover energy I have at the end of today.

### On a more personal note...

I've been fairly sick for the past week. On top of that my kids have been as
well. As a single dad, when I'm sick and I have my kids and they're sick,
I have almost nothing left in the tank most days. But doing this kind of thing
makes me happy and helps put gas back in the tank.

I appreciate any and all who are following along!

<!-- Links -->
[1]: https://github.com/timhutton/twitter-archive-parser
[2]: https://mathstodon.xyz/@timhutton
[3]: https://github.com/CrowderSoup/tw-export-to-hugo

