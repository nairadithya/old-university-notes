$m = \int_0^l \rho A(s) ds$
$m = \rho A(x)\int_0^{x_l}{1+y'^2}dx$
# Centre Of Mass
$\vec{r} = \frac{\int_0^l \vec{r(s)}A(s) ds}{\int_0^l A(s) ds}$
$= \frac{\int_0^{x_l}\vec{r(x) \rho A(x) \sqrt{1+y'^2}dx}}{\int_0^{x_l} \rho A(x) \sqrt{1+y'^2}}$

# Moment Of Inertia
$$
I_{ZZ}^O = \int |\vec{r}|^2 dm \\
= \int |\vec{r(s)}| \rho A(s) ds \\
=\int_0^{x_l}|\vec{r(x)}|^2 \rho A(x) \sqrt{1+y'^2} dx \\
$$
$$
I_{xy}^O = -\int \int \int (xy) \rho (dx dy dz)
$$
$$
dV = A(s) ds = dA\rightarrow(dx.dy).d
$$
$$ \begin{bmatrix} I_{xx} & I_{xy} & I_{xz} \\ I_{yx} & I_{yy} & I_{yz} \\ I_{zx} & I_{zy} & I_{zz} \end{bmatrix} $$ # Product Of Inertia $$ I_{xy}^O = -\int \int \int (xy) \rho (dx dy dz)$$

# Moment Of Area
## First Moment
$$
\overline{I}_x = \int \int y dA
$$
$$
\overline{I}_y = \int \int x dA
$$
## Second Moment
$$
\overline{I}_x = \int \int y^2 dA
$$
$$
\overline{I}_y = \int \int x^2 dA
$$

The moment of inertia is used to help find the "resistance" to the force, given a specific axis or direction.
**Defn-** How the geometry is distributed about an axis of interest.
# Resisting Force And Moments From Supports

There are three kinds of supports - 
1. Pin/Hinge - Fixes linear motion but leaves rotation free
2. Roller - Fixes rotation but leaves motion free
3. Clamp - Fixes both linear and rotational motion.
---
Take this case, with a bunch of forces being applied to the given load.

![[Drawing 2024-02-15 11.20.39.excalidraw.md]]

What we need to do is find this:
1. The resultant force (maximum)
2. Support reaction force and moment
3. Moment on the object (max)
---
The way to approach problems as always is:
1. Free-Body Diagram first (5 marks)
2. Assuming $\Sigma\vec{f} = \vec{0}$, because the object has no acceleration currently, when it is fixed.
3. $\Sigma \vec{M}_{/O} = \vec{0}$
4. The point at which the resultant force is applied is found by
$$\frac{\int |r| dm}{\int dm}$$
---
So in this case,
$(-R_x)\hat{i} + (-200+300-400-150 + R_{y})\hat{j}= \vec{0}$
$R_x = 0$
$R_y = 450N$
The resultant force on this structure is $450 N$
The next step is to find where the resultant force is acting on the structure -
![[Drawing 2024-02-15 11.20.40.excalidraw]]
$\Sigma M_o = 0$
$-M_o + 2000 - 450d = 0$

To find d, we replace $450d$ with the summation of the individiual forces of each of the forces, with the corresponding distance from the hinge.
$-M_o = -200 + 600 - 525 - 2400 + 2000$
$M_o = -525\hat{k}$
$-525 = 2000-450d$
$d = 5.61m$
![[Drawing 2024-02-15 12.37.21.excalidraw]]
The next three things to be found as an engineer -
4. Stress
5. Strain
6. Maximum allowed stress, then what would the dimensions be?
Being more specific,
$$
d = 2m,
l = 10m, 
R = 1500N, 
\Delta l = 0.01
$$
