---
layout: page
title: Sec 3. Intro to Vectors and Matrices
nav_order: 3
parent: Chapter 1 &mdash; Systems of Linear Equations
---

# Introduction to Vectors and Matrices
In this section, we will introduce two concepts that are pretty foundational to
the study of linear algebra: vectors and matrices.
It's important to recognize that these concepts are fundamentally related; I'd
personally recommend thinking about vectors as inputs and output, while
matrices are the *actions* taken on those inputs and outputs.

With this frame of thought in mind, matrices act on vectors, so it makes sense
to get started with vectors to understand matrices.
This might seem somewhat disconnected from [section
one](/pages/ch1/intro-linear) and [section two](/pages/ch1/intro-systems), but
we'll bring it all together in the next section.

## Vectors
There are *lots* of different ways to think about vectors.
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
This makes most sense with two- and three-dimensional vectors, but works
generally, if you're willing to bend your brain a bit.

Definition
{: .label .label-green }
This is the definition that we will be using, and will be most common in an
introductory linear algebra course.[^1]
We'll refer to vectors using boldface type (e.g., $$\vec v$$) to distinguish
them from "scalars" (pronounced "scale -er", which is, in this context,[^2] a
synonym for a real number), another common notation is to use a small arrow
over the letter, which is easier to write by hand.

[^1]:
    Vectors are *far* more general than just this definition.
    An obvious extension would be extending vectors to have complex components,
    but you can go even further than that.  For full details, check out the
    Wikipedia article on
    [vector spaces](https://en.wikipedia.org/wiki/Vector_space).

[^2]:
    What a scalar is depends upon the choices you've made for your *vector
    space,* which is going to be outside the scope of most intro linear algebra
    courses (see [footnote 1](#fn:1)).
    The gist of it is that a scalar is just whatever the components of your
    vectors are; so if your vectors have real components, it's a real number, if
    they have complex components it's a complex number, etc.

In my opinion (as a computer science student), it's easiest to start with the
computer science student perspective; a vector is a list of $$n$$ real numbers,
for some $$n > 0$$.
We have two ways to write a given vector $$\vec v$$ in this "list of numbers"
way: the helpful way and the lazy way.
We'll use the variables $$a_1$$, $$a_2$$, &hellip;, $$a_n$$ to be the $$n$$
numbers that make up our vector (the numbers that make up a vector are called
its *components*).
When combining matrices and vectors (i.e., what almost all the rest of these
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
The small "T" means *transpose*, and has a specific meaning that's important
when it's applied to matrices, but you can think of it as just flipping
something over for now.

It's common to want to talk about the set (if you've not encountered this word
in a mathmatics context before, you can just think of the term "collection") of
all vectors with $$m$$ components.
We'll use the symbol $$\R^m$$ for this purpse, so $$\vec v \in \R^m$$ means that
$$\vec v$$ has $$m$$ components (the symbol $$\in$$ is read as "in," so $$\vec v
\in \R^m$$ means that $$\vec v$$ is *in* our collection of vectors with $$m$$
components).

This is a lot of notation, especially if you haven't seen this stuff before!
It might take some practice to really feel fluent in all of these symbols, but
they're there to help &mdash; more practice will make it easier.

### Basic Vector Operations
Vectors, on their own, aren't particularly useful.
Thus far, it's just a list of numbers!
The concept of $$3$$ isn't very useful in isolation, and like numbers, vectors
are only really useful when you're able to actually *do* things with them.
We're going to define two operations that involve vectors, *scalar
multiplication* and *vector addition*. (You may have heard of the dot- and
cross-products; we'll discuss these later.)

#### Scalar Multiplication
Definition
{: .label .label-green }
Given an arbitrary scalar (again, a scalar in this context is just some real
number) that we'll call $$c$$ and some vector $$\vec v \in \R^n$$ (remember,
this means a "vector called $$\vec v$$ in $$\R^n$$, the collection/set of
vectors that have $$n$$ components"), we define the scalar product of $$c$$ and
$$\vec v$$, denoted $$c\vec v$$ as:

$$
c\vec v = \begin{bmatrix}
ca_1 \\
ca_2 \\
\vdots \\
ca_n
\end{bmatrix}
$$

where $$a_i$$ are the compenets of $$\vec v$$.

So, what does this kludge of notation really *mean?* Well, $$\vec v$$ is a
vector of length $$n$$, and it has components $$a_1$$, $$a_2$$, &hellip;,
$$a_n$$.
When we multiply $$\vec v$$ by $$c$$, we get another  vector, also of
length $$n$$, but each of the compoenets of our new vector have been multiplied
by $$c$$.
So, in other words, the scalar-vector product just multiplies each component of
a given vector by some scalar.

Example
{: .label .label-purple }
Let's have our scalar be $$3$$ and our vector $$\vec v = \transp{[1,2,3]}$$.
Then we have:

$$
\begin{align*}
  3\vec v &= 3\begin{bmatrix} 1 \\ 2 \\ 3 \end{bmatrix} \\
  &= \begin{bmatrix} 3 \times 1 \\ 3 \times 2 \\ 3 \times 3 \end{bmatrix} \\
  &= \begin{bmatrix} 3 \\ 6 \\ 9 \end{bmatrix}
\end{align*}
$$

Practice
{: .label .label-yellow }

Compute:

1. $$3 \times \transp{[3,2,1]}$$, remember the left-most component of a vector
written in the "lazy" way is the top-most component of a vector written in the
helpful way.
If you're hand-writing these, you should try and use the helpful way as much as
possible!
1. $$\sqrt{7} \times \transp{\left[\sqrt{7},\sqrt{14},\frac{1}{2}\right]}$$,
and remember these are just like any other numbers!

[Solutions](/pages/ch1/sol/scalar-multiplication-sol)

#### Vector Addition
Definition
{: .label .label-green }
Given two vectors $$\vec x$$ and $$\vec y$$, both in $$\R^m$$, we define the
vector sum of $$\vec x$$ and $$\vec y$$, denoted $$\vec x + \vec y$$ as:

$$
\vec x + \vec y = \begin{bmatrix}
x_1 + y_1 \\
x_2 + y_2 \\
\vdots \\
x_m + y_m
\end{bmatrix}
$$

where $$x_1$$, $$x_2$$, &hellip;, $$x_m$$ are the components of $$\vec x$$ and
$$y_1$$, $$y_2$$, &hellip;, $$y_m$$ are the components of $$\vec y$$.

Again, this is a big pile of notation: what's the important bits?
(Notice, I'm not going to just rephrase the definition again like I did earlier,
knowing how to read these terse mathematical definitions is a skill, which takes
practice to learn like any other.)
First, *both* $$\vec x$$ and $$\vec y$$ are in $$\R^m$$, so they both have $$m$$
components (i.e., the *same number* of components).
Next, when we add $$\vec x$$ and $$\vec y$$, we just add the first components of
each to become the first component of our new vector, then the second, etc.

Example
{: .label .label-purple }
Let's add $$\vec x = \transp{[2, 3, 7]}$$ and $$\vec y = \transp{[5, 4, 3]}$$.
Applying our definition we get:

$$
\begin{align*}
\vec x + \vec y &= \begin{bmatrix}2 \\ 3 \\ 7\end{bmatrix} +
  \begin{bmatrix}5 \\ 4 \\ 3\end{bmatrix} \\
&= \begin{bmatrix}2 + 5 \\ 3 + 4 \\ 7 + 3\end{bmatrix} \\
&= \begin{bmatrix}7 \\ 7 \\ 10\end{bmatrix}
\end{align*}
$$

Practice
{: .label .label-yellow }

1. Compute $$\transp{[3, 1, 2]} + \transp{[5, 3, 1]}$$.
1. We've defined vector addition but not vector subtraction. Given both vector
addition and scalar multiplication, what would be a sensible way to define
vector subtraction? Using this method, compute $$\transp{[2, 1, 3]} -
\transp{[4, 0, 1]}$$.

[Solutions](/pages/ch1/sol/vector-addition-sol)

### Visualizing Vectors
Intuition
{: .label .label-blue}
One of the *most key insights in linear algebra* is that the two perspectives
we've discussed for thinking about vectors are really the same, and that it's
extremely useful to be able to switch between them.
Being able to change your frame of mind at will is a very difficult skill to
master, but it's very worth it (as well as quite necessary for success in a
linear algebra course).

With this in mind, let's consider the "physics student perspective" for
conceptualizing vectors, which is much more amenable to visualization.

<!-- horizontal rule to seperate out the footnotes from the body -->
---

