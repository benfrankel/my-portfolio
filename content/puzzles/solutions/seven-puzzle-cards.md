+++
type = "solution"
title = "Seven Puzzle Cards"
description = "A set of seven small enigmatic puzzles"
date = "2015-09-29"
showtime = false
showtaxonomy = false
+++

#### Card 1

We see a bunch of W's on this card. W doesn't give us any information, so we have to look at the way the W's are arranged. There are 5 pairs of lines with differing numbers of W's. We can replace the lines with their counts to abstract the W's away:

```
7
7

5
6

7
6

6
7

7
5
```

Now we notice that the numbers we're left with are all greater than 55, so we can perform the subtraction that the title (**-55**) suggests.

```
22

01

21

12

20
```

At this point we see that all the numbers are within the 1-26 range of the alphabet. Replacing the numbers with their corresponding letters spells out the answer: **vault**.

#### Card 2

The title (**1+2=**) suggests that this card is the result of some kind of addition. The only way that the *result of an addition* could give us any information about the answer to this card is if the addition involves this card. If the addition involves this card, then this card must be either the **1** or the **2**. Since this is **Card 2**, this card is the **2** and the **1** must be **Card 1**.

Now we know that we're adding something from **Card 1** together with something from **Card 2** and the result is `npwan`. The only way this makes sense is if we're adding the answer from **Card 1** together with the answer from **Card 2** (which we don't know yet).

We can use the same trick of converting letters to numbers here: `npwan = 14-16-23-01-14`, so `22-01-21-12-20 + a-b-c-d-e = 14-16-23-01-14`, where *a*, *b*, *c*, *d*, and *e* are unknowns. If we suppose that this addition "wraps around" past 26 and back to 01, then we get the answer: `18-15-02-15-20`, or **robot**.

#### Card 3

Look at the words--how are they similar, how do they differ?

```
periphery
similarity
meander
earnest
serendipity
relief
array
gregarious
sanitary
replay
elusive
perjury
```

There doesn't seem to be any particular pattern... but a lot of these words end with the letter Y. Now we remember the title (**why not**) and realize that it might literally mean to exclude words that end with the letter Y.

```
meander
earnest
relief
gregarious
elusive
```

Now there are only five words. The answers to the other two cards were 5 letter words, so maybe this card is the same? That would mean that every line corresponds to one letter. Taking the first letter of each line reveals the word **merge**.

#### Card 4

The card itself here is awfully cryptic:

```
24 2 0 23 0 3 3 23 2 0 34
4 34 4 4 0 3 2 0 2 24 0
2 2 2 0 123 2 12 12 0 3 13
```

So let's examine the title first (**cardinal NEWS**). The first word is lowercase while the second word is uppercase; there must be a reason for that. The word "cardinal" could mean several things, but its juxtaposition with the uppercase "N-E-W-S" hints that it's referring to the cardinal directions (North, East, West, and South).

Now coming back to the card... we see that the only digits that appear are 0, 1, 2, 3, and 4. Furthermore, the only time 0 appears is when it's alone. There are four cardinal directions, so perhaps we have to map digits to directions. We'll map 1 to N, 2 to E, 3 to W, and 4 to S, as the title suggests.

```
o→  o→  o  ←o→  o  ←o  ←o  ←o→  o→  o  ←o
↓                                       ↓

o  ←o   o   o   o  ←o   o→  o   o→  o→  o
↓   ↓   ↓   ↓                       ↓    
                ↑       ↑   ↑           ↑
o→  o→  o→  o  ←o→  o→  o→  o→  o  ←o  ←o
```

Well it isn't clear yet what this is supposed to be, but there's definitely some structure to it. Let's try connecting the dots.

```
o---o---o---o---o---o---o---o---o---o---o
|                                       |
o---o   o   o   o---o   o---o   o---o---o
|   |   |   |   |       |   |       |   |
o---o---o---o---o---o---o---o---o---o---o
```

Now it looks like a frame around a five letter word. It's not clear what's frame and what's letter, but we can trim some parts that are obviously frame:

```
o---o                               o---o
|                                       |
o---o   o   o   o---o   o---o   o---o---o
|   |   |   |   |       |   |       |   |
o---o   o---o   o---o   o---o       o---o
```

We can brute-force this now.

* The 1st stickform could be 'b', 'o', 'n', or 's'.
* The 2nd stickform has to be 'u'.
* The 3rd stickform could be 'c' or 'r'.
* The 4th stickform could be 'o' or 'n'.
* The 5th stickform has to be 't'.

There are 4 * 1 * 2 * 2 * 1 = 16 possibilities:

- bucot, oucot, nucot, sucot
- bucnt, oucnt, nucnt, sucnt
- burot, ourot, nurot, surot
- burnt, ournt, nurnt, surnt

The only word here is **burnt**. (honorable mention goes to [sucot](https://en.wikipedia.org/wiki/Sukkot))

#### Card 5 {#1}

It helps if you immediately recognize the contents of this card as the *famous*[^1] [Koch curve](https://en.wikipedia.org/wiki/Koch_snowflake). We're also lucky that the title (**sewoh?**) of this card is a question, supposedly about the Koch curve, that we just have to answer.

Unscrambled, the question is "**whose?**", and the answer to that question is **Koch's**. But we need a word. Since the question was scrambled, we can scramble the answer too for a **shock**. (honorable mention goes to [hocks](https://en.wikipedia.org/wiki/Hock_(anatomy)), an unexpected alternative answer (please don't sue me))

#### Card 6

This snippet of [Python](https://www.python.org/) code collects the 5th letter from the 1st card's answer, the 4th letter from the 2nd card's answer, ..., and the 1st letter from the 5th card's answer, and then joins them together as a new word. That new word is **torus**. (if you were upset about the [**hocks**](#1) fiasco from before, please note that this card would have failed for any word starting with something other than *S*)

#### Card 7

Let's start with step 1. We are instructed to *"determin. the previous answers 2 through 6 in order"*. Now, that curiously-placed '.' is awfully suspicious. We know that *"determin."* is an abbreviation, but for what? The obvious answer is "determine", but then the line "(step 1 should require computer assistance)" doesn't make any sense.

Another interpretation is that *"determin."* is short for "determinant". That also fits the title (**five by five**), considering that 2 through 6 is five answers, each having five letters.

```
robot
merge
burnt
shock
torus
```

Let's use the old letters-to-numbers trick again.

```
| 18  15   2  15  20 |
| 13   5  18   7   5 |
|  2  21  18  14  20 |
| 19   8  15   3  11 |
| 20  15  18  21  19 |
```

Let's take the hint now and let a computer do the boring part...

... calculating ...

And the answer is `125239`! That is, that's the answer to step 1. On to step 2!

We need to "verify that the plural is a name". We just have a number, and we need to convert it back to the alphabet space. There are many ways to split the digits before converting, so let's take a systematic approach.

- If we take A=1, we are left with `25239`.
    - If we take B=2, we are left with `5239`.
        - If we take E=5, we are left with `239`.
	        - If we take B=2, we are left with `39`.
	            - If we take C=3, we are left with `9`.
		            - We must take I=9. The result is 'ABEBCI'.
	        - If we take W=23, we are left with `9`.
	            - We must take I=9. The result is 'ABEWI'.
	- If we take Y=25, we are left with `239`.
	    - If we take B=2, we are left with `39`.
		    - If we take C=3, we are left with `9`.
			    - We must take I=9. The result is 'AYBCI'.
		- If we take W=23, we are left with `9`.
		    - We must take I=9. The result is 'AYWI'.
- If we take L=12, we are left with `5239`.
    - If we take E=5, we are left with `239`.
	    - If we take B=2, we are left with `39`.
		    - If we take C=3, we are left with `9`.
				- We must take I=9. The result is 'LEBCI'.
		- If we take W=23, we are left with `9`.
		    - We must take I=9. The result is 'LEWI'.

Therefore there are 6 possibilities: 'ABEBCI', 'ABEWI', 'AYBCI', 'AYWI', 'LEBCI', and 'LEWI'.

We need to verify that the plural is a name. To get a plural, we use the suffix -*s*, so let's try that: 'ABEBCIS', 'ABEWIS', 'AYBCIS', 'AYWIS', 'LEBCIS', and 'LEWIS'. Only *LEWIS* is a name.

Finally, we need to "shake well". That means we need to scramble the letters. This gives us the final answer: **wiles**. (honorable mention goes to [**lweis**](https://en.wiktionary.org/wiki/lwei)--but that doesn't count even though it's a "Scrabble word")

[^1]: In some circles, anyways...
