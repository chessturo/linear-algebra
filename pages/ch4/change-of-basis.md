---
layout: page
title: Change of Basis
nav_order: 1
parent: Chapter 4 &mdash; Subspaces
---

# Change of Basis
Earlier on, we introduced the [standard basis vectors](TODO), and we considered
how we could conceptualize of *any* vector being a linear combination of these
vectors.
<!-- TODO add link -->
While the standard basis vectors often make life easy by being really simple
vectors, it can sometimes be helpful to work in a basis other than the standard
basis.
We will see one particularly important example of why change of basis is useful
later on in [Chapter 6](TODO).
<!-- TODO add link -->

## What Change of Basis Does

We've already covered that we can write any vector $$\vec v$$ as a linear
combination of the basis vectors for the dimension of $$\vec v$$.
For example, if we consider the case $$\vec v \in \R^2$$ (i.e., $$\vec v$$ is a
vector with two components), we know we can write $$\vec v$$ as some combination
of $$\transp{[1,0]}$$ and $$\transp{[0,1]}$$.

There is, however, nothing special about $$\transp{[1,0]}$$ and
$$\transp{[0,1]}$$; $$\vec v$$ can be expressed by a linear combination of any
two linearly independent vectors in $$\R^2$$ (as we know that any two linearly
independent vectors in $$\R^2$$ span $$\R^2$$).

Example
{: .label .label-purple}
Consider the two linearly independent vectors $$\vec b_1 = \transp{[1, 2]}$$ and
$$\vec b_2 = \transp{[3, 1]}$$.
Let $$B$$ be the basis with $$\vec b_1$$ as its first coordinate and $$\vec
b_2$$ as its second coordinate.
If we have a vector $$\vec v = \transp{[7,4]}$$ with respect to the standard
basis (i.e., the "normal" basis we've been using this whole time), we could
represent in our new basis $$B$$ as $$\transp{[1,2]}$$.

We can verify this is correct as follows:

$$
1\begin{bmatrix} 1 \\ 2 \end{bmatrix} + 2\begin{bmatrix} 3 \\ 1 \end{bmatrix} =
\begin{bmatrix} 7 \\ 4 \end{bmatrix} = \vec v
$$

Just like when we used the standard basis vectors, the first coordinate of our
vector $$\transp{[1,2]}$$ multiplied the first basis vector, and the second
coordinate multiplied the second basis vector.

Definition
{: .label .label-green }

We'll use the notation:

$$
[\vec v]_B = \begin{bmatrix} 1 \\ 2 \end{bmatrix}
$$

to mean "the vector $$\vec v$$ is equal to $$\transp{[1,2]}$$ with respect to
basis $$B$$."

Hopefully, this makes it clear that the change of basis isn't really changing
the vector in question; rather, it's just giving us a new way to interpret the
coordinates of the vector.
An analog from another area of math would be converting between
Cartesian/rectangular coordinates and polar coordinates.
The points being talked about aren't changing, but it can be much easier to do
certain kinds of problems in polar coordinates as compared to rectangular
coordinates.

