---
title: "Simple.css: Classless Styles"
slug: "simple-css-classless-framework"
date: 2022-05-28T07:44:38 
categories:
  - Site Updates
tags: 
  - site-updates
  - simple-css
  - css-framework
---

In my last post I mentioned that I wanted to keep this site simple. That
I wanted to build on a solid foundation. I didn't want to muck with that
foundation to make my site look "pretty".

I shared the un-styled version of this site on my socials when [@Duffy][1]
[mentioned][2] [Simple.css][3]. I fell in love with the idea of it right away.
A classless css framework that applies styling to semantic markup? What's not
to love??

Simple.css was made by [Kev Quirk][4]. He made it as a lightweight alternative
to other "everything but the kitchen sink" CSS frameworks. Simple.css weighs in
at a mere ~4kb. It makes your site look decent right off the bat, and because
it's just based on semantic markup you can quickly start to customize it to
suit your needs.

For this site I wrote a simple stylesheet that is currently 27 lines long. In
fact, it's so small that I'll share it here:

```css
:root {
  --accent: #2EC838;
}

a {
	text-decoration: none;
}

article a h3 {
	margin: 0;
}

article.h-entry {
	margin: 1rem auto;
}

.elsewhere-icon {
	fill: var(--accent);
}

nav.paginator {
	text-align: center;
}

nav.tags {
	margin: 0.5rem 0 0 0;
}
```

The `:root` bit is the only part you'll need to modify the accent color. The
rest, for me, is just minor tweaks that I felt would make the site look better.
Or, in the case of the `.elsewhere-icon` class, to make my social links match
the accent color (they are SVGs).

And that's *it*. Literally.

I know that when I add my `/micro` section with all the different post types
and webmentions that the stylesheet will grow. However, with this solid
foundation it'll be able to grow in a way that makes sense, free of any
"hacks".


<!-- LINKS  -->
[1]: https://twitter.com/duffy0
[2]: https://twitter.com/duffy0/status/1529810591405047808
[3]: https://simplecss.org/
[4]: https://kevq.uk/
