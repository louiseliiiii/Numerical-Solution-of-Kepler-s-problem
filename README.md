# Numerical-Solution-of-Kepler-s-problem
One of science's great achievements was the discovery of Kepler's laws for planetary motion; in particular, that the planets follow closed elliptical orbits around the sun.


Part 1
The position of a moving planet towards to
another fixed planet. In this diagram, the smallest or the inner
ellipse is the original track of this moving planet. With time
increasing, this diagram shows the moving track of this planet starts
expanding to right side slowly but the track is still ellipse. In the
other world, the shape of moving track is always ellipse whose
center moving to left side slowing and Semi-major axis increases
slowly as well. The right side of the moving track does not have
great change.

Part 2
Symplectic Euler method gives the numerical solution which is a closed ellipse (The blue circle in the above graph) which
shows the motion and position conserves with the time changing. In the other world, the moving track of this planet always
follows a fixed track all the time. The angular momentum of this method conserves at 0.8 with the increasing of t. Overall, the
Hamiltonian of this method conserves at -0.5 with really tiny oscillation when t increases.
The numerical solution from Standard Euler's method does not convers. From the part 2, it also tells the Hamiltonian or angular
momentum by Standard Euler's method do not conserve.
(In the 3 above graph, blue plot represents Symplectic Euler method and the red plot representes standard Euler's method. I
combined them together to bring a great comparison.)
