---
title: "New Theme: Back to Basics"
slug: "new-theme-back-to-basics"
date: "2022-05-25 13:31:32-0600"
categories:
    - Site Updates
tags:
    - site-updates
    - theme
    - indieweb
---

Things look a little &mdash; ahem &mdash; _different_ around here, don't they?
I think if you look carefully you'll notice a few things have changed 😅

I recently decided that I wanted to change up my personal site and build from
a solid foundation. There wasn't anything wrong with my old theme. Far from it!
It worked really well. I just wanted to have something that was purpose built
for what I wanted. Not something I was having to tweak and mod to make my own.

## Roadmap

I've mentioned that I'm going to build on this minimal foundation. So what's
the plan?

1. Basic styling (likely a darker theme), using a terminal / cli asthetic
2. First class support for code / syntax highlighting
3. Make everything in `/posts` of [IndieWeb][1] type `article`
4. Add support for sending [web mentions][2] after build
5. Add support for receiving [web mentions][2] from other sites
    1. When a web mention is received create a "Page" for it in hugo, nested
       under the post that received the mention
    2. List web mention sub pages on the "single" page
6. Add [Micropub][3] support so I can use a [Micropub Client][4] to post to my
   site on the go
7. New `/micro` section that will contain [IndieWeb][1] post types
    1. `note`
    2. `photo`
    3. `reply`
    4. `like`
    5. `repost`
    6. `rsvp`
    7. etc

As you can see, I've got pretty big plans for this site lol. That's why
I wanted to start from a simple, solid foundation. With this new theme, I think
I've got it 😊

<!-- LINKS -->
[1]: https://indieweb.org
[2]: https://indieweb.org/Webmention
[3]: https://indieweb.org/Micropub
[4]: https://indieweb.org/Micropub/Clients
