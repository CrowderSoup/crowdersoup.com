---
title: "Day 4: Classifying Tweets"
date: 2023-01-09T21:26:25 
categories: 
  - Projects
tags:
  - indieweb
  - projects
  - 100days
  - twitter
  - golang
---

Let's start today with the personal shit... I was up half the night with
a vomiting child last night. I was up early to get the other kid ready for
school. I worked all day. I am TIRED. But I am showing up for my blog. I am
showing up for 100 days!

### Twitter Import

I continued to work this evening on importing my tweets as Hugo posts. I need
to classify my tweets, so therefore I need to define a data structure to do so.
I came up with the following in Go:

```
// TweetType classifies a type of tweet
type TweetType string

const (
    // Post An original tweet
    Post TweetType = "post"
    // Reply A reply to a tweet
    Reply = "reply"
    // Retweet a repost of a tweeet
    Retweet = "retweet"
)

// Tweet is a post on twitter
type Tweet struct {
    Type TweetType
    // TODO: Add additional tweet properties (permalink, body, etc.)
}
```

This data structure will let me classify all my tweets so I can generate Hugo
posts appropriately. It may be slightly naive, but I can iterate on it as I go.
It might not be a LOT of progress, but given my first paragraph... I think it's
still GREAT progress.

From here I will build a heuristic that will parse the body of a tweet and
classify it into one of the above types. It will pull out the important bits of
data (permalinks, links to tweets I'm replying to, etc.). This was an important
and big step in this project.

Here's to day 5 and everything I will get done tomorrow!
