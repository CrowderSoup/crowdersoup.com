---
title: IndieWeb Proof-of-Concept 
date: 2022-06-03T08:10:31 
categories: 
  - Projects
tags: 
  - projects
  - indieweb 
  - serverless
  - micropub
---

The past few days I've been working on a proof-of-concept for this blog. It's
part of the roadmap I included in [the post][1] about this sites new theme.
I already took care of [basic styling][2] (and code block styles) by using
Simple.css. I also marked up all the posts on this site as an `article`
(`h-entry`).

That means sending / receiving webmentions and adding micropub support is up
next. But in order to do those things I needed to figure out _how_. This site
is a static one. It's content lives in [a GitHub repo][3]. It is built and
deployed any time I commit to the `main` branch. So how will I post to my site
(or allow webmentions)?

### The Idea

My plan is fairly straightforward:

- Serverless functions (in [Vercel][4], where this site is hosted) act as the
    micropub / webmention endpoints
- Those endpoints write a file to the GitHub repo where the site is hosted (in
    a branch)
- The branch is merged to `main` after review, causing it to be published on my
    site

### The Proof

I created [a new website][5] that is roughly the same as this one. It's built
from a GitHub repo, hosted in Vercel, uses Hugo, even the same theme. I added
an endpoint using serverless functions and tested it to see if I could do the
above.

It turns out I totally can! My endpoint approximates some of the [Micropub
spec][6]. It accepts a request, builds a post, and creates it as a new file on
my site. It honestly felt like magic the first time it worked!

### The Implementation

The implementation won't be that far off from the concept. I'll of course have
to fully implement the Micropub spec (and webmention). Realistically the only
kinds of posts I'll make using the micropub endpoint are `notes`, `photo`,
`like`, `reply`, etc. Things that would live under `/micro`, not `/posts`.

I'm going to make each of these follow this scheme:
`/micro/<kind>/<date>/<slug>`, and the actual content will live in an
`index.md` file in a folder with that path. I had thought about just doing
`<slug>.md`, however using a folder with an `index.md` file gives me the
ability to put webmentions associated with a post in a `webmentions` folder
under the post. That then will allow me to iterate over them in the template
for display without much effort.

### Summary

I'm super excited about the result of this proof-of-concept. It means I can
continue to move forward with implementing IndieWeb principals on this site in
a way that makes sense to me. Hopefully it'll be in a way that makes sense to
others as well.

You will notice though, that I didn't touch on **sending** webmentions. That's
because that's another project altogether that I need to tackle. I'll have
another proof-of-concept coming up around _that_ project soon!

<!-- LINKS -->
[1]: https://crowdersoup.com/posts/site-updates/new-theme-back-to-basics/
[2]: https://crowdersoup.com/posts/site-updates/simple-css-classless-framework/
[3]: https://github.com/CrowderSoup/crowdersoup.com
[4]: https://vercel.com
[5]: https://github.com/CrowderSoup/indieweb-proof-of-concept
[6]: https://www.w3.org/TR/micropub
