# Table of Contents

1.  [PCA IEEE Report](#orge49ca06)
    1.  [References](#org9573924)
    2.  [What is PCA?](#org97813cc)
    3.  [Problem Statement](#org645d414)
    4.  [Covariance Matrix](#orge85892c)
2.  [Questions](#orgcd5b0a6)
    1.  [Why Covariance specifically?](#orgd851c11)



<a id="orge49ca06"></a>

# PCA IEEE Report


<a id="org9573924"></a>

## References

-   <https://arxiv.org/pdf/2403.15112>
-   <https://arxiv.org/pdf/2402.15527>
-   <https://medium.com/@anabelenmanjavacas/dimensionality-reduction-and-pca-23dbd7d6f367>
-   <https://ieeexplore.ieee.org/document/10511242>


<a id="org97813cc"></a>

## What is PCA?

In a nutshell, what Principal Component Analysis does is reduce the dimensionality of a set of data points by linearly projecting them onto a lower-dimensional space where the reconstruction error is as minimal as possible.


<a id="org645d414"></a>

## Problem Statement

When working with data, there are times when we encounter a situation where we obtain data with a dimensionality that is too high to be visualized or analyzed(by dimensionality we mean the number of dimensions of the data points.)

Principal Component Analysis is a method by which data points with a higher dimensionality are projected onto a linear subspace, with as minimal of a reconstruction error and projection error as possible.

Focus on just the one point $x$ and its projection x<sub>\\|</sub>. $d$ is the distance of $x$ from the origin, $r$ is the distance of x from $x_{\|}$ in the subspace, and $v$ is the distance of $x_{\|}$


<a id="orge85892c"></a>

## Covariance Matrix

How do we determine the direction of maximal variance. We can determine the individual component variances. For a given vector $x=(x_1, x_2)^T$, then the variances of the first and second component can be written as $C_{11} := \langle x_1 x_1\rangle$ ,$C_{22} := \langle x_2 x_2\rangle$, (the angle brackets indicate &rsquo;averaging&rsquo; over all data points)


<a id="orgcd5b0a6"></a>

# Questions


<a id="orgd851c11"></a>

## Why Covariance specifically?

