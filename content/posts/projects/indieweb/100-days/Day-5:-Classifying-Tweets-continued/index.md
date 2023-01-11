---
title: "Day 5: Classifying Tweets (continued)"
date: 2023-01-10T20:59:46 
categories:
  - Projects
tags: 
  - indieweb
  - projects
  - 100days
  - twitter
  - golang
---

Today finds me working on actually parsing the body of each tweet in an attempt
to classify them. I need to spend a bit more time making sure that I'm
correctly identifying each type of tweet. Quote Tweets especially, since right
now (as you'll see in my results) that's the one I'm least sure about.

Here's some numbers based on ALL of my tweets (posts, replies, retweets, and
quote tweets) from 2020 onward.

```
Total Tweets: 6519
Post Tweets: 1625
Reply Tweets: 3889
Retweets: 1005
Potential Quote Tweets: 613
```

The last line is the total number of tweets that I _think_ might be quote
tweets. I need to look more closely at those and make sure I'm identifying them
correctly. If I am the total number of quote tweets would be subtracted from
the number of post tweets (the body of these look very similar so they are hard
to differentiate).

Overall I am happy with the progress I made today. It's not much, but it's
**something**. And for tonight that is enough.
