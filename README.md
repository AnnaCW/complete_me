CompleteMe
Turing Project
April 2016

Project Description:

---

## CompleteMe

Everyone in today's smartphone-saturated world has had their
share of interactions with textual "autocomplete." You
may have sometimes even wondered if autocomplete is
worth the trouble, given the ridiculous completions it
sometimes attempts.

But how would you actually __make__ an autocomplete system?

In this project, __CompleteMe__ we'll be exploring this idea by
a simple textual autocomplete system. Perhaps in the process we will develop
some sympathy for the developers who built the seemingly
incompetent systems on our phones...

### Data Structure -- Introduction to Tries

A common way to solve this problem is using a data structure
called a __Trie__. The name comes from the idea of a Re-trie-val
tree, and it's useful for storing and then fetching paths through
arbitrary (often textual) data.

A Trie is somewhat similar to the binary trees you may have seen before,
but whereas each node in a binary tree points to up to 2 subtrees,
nodes within our retrieval tries will point to `N` subtrees, where `N`
is the size of the alphabet we want to complete within.

Thus for a simple latin-alphabet text trie, each node will potentially
have 26 children, one for each character that could potentially follow
the text entered thus far.
(In graph theory terms, we could classify this as a Directed, Acyclic
graph of order 26, but hey, who's counting?)

What we end up with is a broadly-branched tree where paths from the
root to the leaves represent "words" within the dictionary.


### Input File

Of course, our Trie won't be very useful without a good dataset
to populate it. Fortunately, our computers ship with a special
file containing a list of standard dictionary words.
It lives at `/usr/share/dict/words`

Using the unix utility `wc` (word count), we can see that the file
contains 235886 words:

```
$ cat /usr/share/dict/words | wc -l
235886
```

Should be enough for us!

### Required Features

To complete the project, you will need to build an autocomplete
system which provides the following features:

1. Insert a single word to the autocomplete dictionary
2. Count the number of words in the dictionary
3. Populate a newline-separated list of words into the dictionary
4. Suggest completions for a substring
5. Mark a selection for a substring
6. Weight subsequent suggestions based on previous selections
