---
layout: page
title: Sec 3. Intro to Matricies and Vectors
nav_order: 3
parent: Chapter 1 &mdash; Systems of Linear Equations
---

# Introduction to Matricies and Vectors
In this section, we will introduce two concepts that are pretty foundational to
the study of linear algebra: vectors and matricies.
It's important to recognize that these concepts are fundamentally related; I'd
personally recommend thinking about vectors as inputs and output, while
matricies are the *actions* taken on those inputs and outputs.

With this frame of thought in mind, matricies act on vectors, so it makes sense
to get started with vectors to understand matricies.
This might seem somewhat disconnected from [section
one](/pages/ch1/intro-linear) and [section two](/pages/ch1/intro-systems), but
we'll bring it all together in the next section.

## Vectors
The are *lots* of different ways to think about vectors.
Two common ones are what
[3blue1brown](https://www.youtube.com/watch?v=fNk_zzaMoSs) refers to as the
"computer science student perspective" and the "physics student perspective."
(Small side note, but that link is to a video series that gives a very helpful
visual explanation of lots of liner algebra topics! If you're confused by
something in these notes, a watch of the relevant video will likely help.)
The computer science student perspective is to think about vectors as lists of
numbers; essentially a coordinate pair with potentially more than just two
entries.
The physics student perspective, however, is to think of vectors as arrows in
space, pointing a certain direction with a certain length.
This makes most sense with two and three dimensional vectors, but works
generally, if you're willing to bend your brain a bit.

Intuition
{: .label .label-blue}
One of the *most key insights in linear algebra* is that these two ways of
thinking about vectors are really the same, and that it's extremely useful to
be able to switch between them.
Being able to change your frame of mind at will is a very difficult skill to
master, but it's very worth it (as well as quite necessary for success in a
linear algebra course).

Definition
{: .label .label-green }
This is the definition that we will be using, and will be most common in an
introductory linear algebra course.[^1]
We'll refer to vectors using boldface type (e.g., $$\vec v$$) to distinguish
them from "scalars" (a scalar is just a number), another common notation is to
use a small arrow over the letter, which is easier to write by hand.

[^1]:
    Vectors are *far* more general than just this definition.
    An obvious extension would be extending vectors to have complex components,
    but you can go even further than that.  For full details, check out the
    wikipedia article on
    [vector spaces](https://en.wikipedia.org/wiki/Vector_space).

Let's start with the computer science student perspective; a vector is a list
of $$n$$ real numbers, for some $$n > 0$$.
We have two ways to write a given vector $$\vec v$$ in this "list of numbers"
way: the helpful way and the lazy way.
We'll use the variables $$a_1$$, $$a_2$$, &hellip;, $$a_n$$ to be the $$n$$
numbers that make up our vector (the numbers that make up a vector are called
its *components*).
When combining matricies and vectors (i.e., what almost all of the rest of these
notes are about), the computations are easy to follow if you write your vectors
in the helpful way:

$$
\vec v = \begin{bmatrix}
a_1 \\
a_2 \\
\vdots \\
a_n
\end{bmatrix}
$$

This is extremely inconvenient, however, when talking about a vector in the
middle of a paragraph.
This is where we get the lazy way: $$\vec v = \transp{[a_1, a_2, \ldots,
a_n]}$$, which is equivalent to the version above.
The small "T" means *transpose*, and has a specific meaning when applied to
matricies, but you can think of it as just flipping something over.

