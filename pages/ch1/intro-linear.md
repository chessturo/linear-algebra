---
layout: page
title: Linear Equations
nav_order: 1
parent: Chapter 1 &mdash; Systems of Linear Equations
---

# Linear Equations
In this first section, we're going to consider some foundational objects of
study in linear algebra, and the sorts of questions linear algebra can help us
answer.
From high school, you're likely familiar with the concept of a *linear
equation*, as well as a *system of linear equations*.
Here, we will begin by defining these two concepts, and reviewing some examples
of problems that make use of them.

Linear equations get their name because they describe lines in space.
You might remember the "slope-intercept" equation for the line being $$y = mx +
b$$, where $$m$$ is a constant (the slope of the line) and $$b$$ is another,
possibly different constant (the line's intercept with the $$y$$-axis).

Intuition
{: .label .label-blue}
You might also remember the slope as being defined as "rise over run."
One helpful way to think about this is as defining the relationship between
$$x$$ and $$y$$.
If you have a line of slope $$3$$, then every time $$x$$ changes by $$1$$, $$y$$
changes by $$3$$.

Linear algebra is all about describing these relationships between unknowns, as
well as changing our perspective on problems so that these relationships become
more clear.

## Definition of a Linear Equation
Definition
{: .label .label-green}

An equation with $$n$$ unknowns: $$x_1$$, $$x_2$$, &hellip;, $$x_n$$, and
coefficients: $$b$$, $$a_1$$, $$a_2$$, &hellip;, $$a_n$$ is said to be a *linear
equation* if it can be written in the form:

$$
a_1x_1 + a_2x_2 + \ldots + a_nx_n + b = 0
$$

Where at least one of $$a_1$$ through $$a_n$$ isn't equal to zero.

This might look kinda scary!
Don't fret though, linear equations are really the simplest kinds of equations
that are particularly useful; the only reason that definition is so long-winded
is to keep things as general as possible.

## Examples of Linear Equations
Example
{: .label .label-purple }

A simple linear equation would be something like $$3x + 7 = 0$$.
Here, we only have one unknown (the variable $$x$$), so we don't need to add
subscripts.
Then, we have two coefficients, $$a_1 = 3$$ and $$b = 7$$.
Notice, we could also write this *same* equation as $$3x = -7$$ or $$x +
\frac{7}{3} = 0$$.
These don't exactly line up with the form from our definition, but we can use
algebra to rewrite them such that they line up with the definition.
As such, we consider these to be linear equations as well.
You might have noticed here that there's only one value for $$x$$ that makes
this equation true, we'll return to that shortly.

A more slightly complex example would be something like $$y = 3x + 4$$.
This isn't in the form given by our definition, but we can rewrite it as $$3x +
(-1)y + 4 = 0$$, so it's a linear equation.
This equation has two unknowns rather than just one, and here I'm choosing to
call them $$x$$ and $$y$$ rather than $$x_1$$ and $$x_2$$ like I did in the
definition.
Since these are just placeholder variables for an unknown value, the name
doesn't really make a difference, so long as I call them two different things.
(If I just used $$x$$ and $$x$$ instead of $$x$$ and $$y$$, I'd have an entirely
different equation!)

So long as you satisfy the form given by the definition, these equations can get
as complex as you'd like. Here's a rather contrived example:

$$
\left(\sqrt{7}\right)x_1 + \pi x_2 + \left(44^2\right)x_3 - 1000x_4 + \log(\log(8)) = 0
$$

Here, we have four unknowns ($$x_1$$, $$x_2$$, $$x_3$$, and $$x_4$$), as well
as five constant coefficients.
Notice, these coefficients can be as involved as needed, so long as they're just
multiplying the unknowns.

## Non-Linear Equations
Linear algebra concerns itself with the study of linear equations, so we're not
really going to discuss non-linear equations.
This said, it's important to know what is and isn't a linear equation, so we're
going to briefly discuss that here.

Non-Example
{: .label .label-red }

It's important to note that the definition doesn't allow us to exponentiate the
unknowns. An equation like $$x^2 + 1 = 2$$ is *not* linear because there's no
way to write that equation in the form of the definition. 

It's also important to keep in mind how you're allowed to combine unknowns. You
can multiply unknowns by *constant coefficients*, but not by other unknowns.
This means that $$ x_1 \times x_2 = 7$$ is not a linear equation.
The only way you can combine unknowns is by adding them together (possibly with
a constant multiplier).

Other non-examples:
- $$x^y = 3$$, you can only combine unknowns like $$a_1x + a_2y$$
- $$\sqrt{x_1} = 4$$, you can't exponentiate terms, and $$\sqrt{x_1} =
{x_1}^{\frac{1}{2}}$$
- $$\frac{3}{x} = y$$, you can't exponentiate terms, and diving by an unknown is
the same as raising to the power $$-1$$.

