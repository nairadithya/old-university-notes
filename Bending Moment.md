# Recall
$$
\frac{d^2}{dx^2}(EI \frac{d^2v}{dx^2}) = -w(x) (strong)
$$
$$
\int_0^l EIq''v''dx_{stiffness} + \int_0^lqwdx_{\text{ext. force or moment}} + [qS - q'M]_0^l
$$



>[!faq] Learn how to simplify the polynomial equation down to find the constants associated with the vertical displacement.

$$
v(x) = c_1 + c_2 x + c_3 x^2 + c_4 x^3 
$$
$$
\theta(x) = v'(x)
$$
We find by simplification,

$$
c_1 = v_l 
$$
$$
c_2 = \theta_l
$$
$$
c_3 = \frac{3}{l^2}(v_r-v_l) - \frac{1}{l} (2\theta_l + \theta_r)
$$
$$
c_4 = \frac{2}{l^3} (v_l-v_r) + \frac{\theta_l+\theta_r}{l^2}
$$

$$
v(x) = H_1(x) v_l + H_2(x)\theta_l (H_3(x)) v_r + (H_4(x)) \theta_r
$$
$$
H_1 = 2(\frac{x}{l}^3) - 3\frac{x}{l}^2 + 1
$$
$$
H_2 = x-2\frac{x^2}{l} + \frac{x^3}{l^2}
$$
$$
H_3 = 3(\frac{x}{l})^2 -2\frac{x}{l}^3
$$
$$
H_4 = \frac{x^3}{l^2} - \frac{x^2}{l}
$$



Since we know that,
$$
\int_0^l EIq''v''dx
$$
$$
v = \underline{H}(x)^T v
$$
$$
q = H(x)
$$



Programming The Bending Stiffness Matrix

```octave
pkg load symbolic
syms x l
H1 = 2(x^3)/l - 3x^2/l + 1

```

$$
\theta \approxeq \tan \theta
$$

$$
K_e = [ \ ]\frac{EI}{l^3}_{\text{I = moment of inertia}}
$$
$$
f_e = \int_0^l \begin{bmatrix} H_1 \\ H_2 \\ H_3 \\ H_4 \end{bmatrix} w(x)
$$
$$
f_e = \frac{w_o}{l}[ 9 \  2l \ 2l \ - 3l]^T
$$

We are going to focus on uniformly distributed forces, different kinds of forces and a point of force
No couples.


![[Drawing 2024-03-14 15.22.20.excalidraw]]

$$
(q(l)S(l) - \theta(l) M(l))
$$
We only eliminate rows and columns where the displacements are 0