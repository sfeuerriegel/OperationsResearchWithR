# Operations Research With R
## Teaching materials for a course on operations research with R

*Author: Stefan Feuerriegel, ETH Zurich*

R is widely taught in business courses and, hence, known by most data scientists with business background. However, when it comes to optimization and Operations Research, many other languages are used. Especially for optimization, solutions range from Microsoft Excel solvers to modeling environments such as Matlab and GAMS. Most of these are non-free and require students to learn yet another language. Because of this, we propose to use R in optimization problems of Operations Research, since R is open source, comes for free and is widely known. Furthermore, R provides a multitude of numerical optimization packages that are readily available. At the same time, R is widely used in industry, making it a suitable and skillful tool to lever the potential of numerical optimization.

The materials starts with a review of numerical and linear algebra basics for optimization. Here, participants learn how to derive a problem statement that is compatible with solving algorithms. This is followed by an overview on problem classessuch as one and multi-dimensional problems. Starting with linear and quadratic algorithms, we also cover convex optimization, followed by non-linear approaches such as gradient based (gradient descent methods), Hessian based (Newton and quasi-Newton methods) and non-gradient based (Nelder-Mead). We finally demonstrate the potent capabilities of R for Operations Research: we show how to solve optimization problems in industry and business, as well as illustrate the use in methods for statistics and data mining (e.g. quantile regression). All examples are supported by appropriate visualizations.

## Materials

**Lectures**

* [Session 1: Motivation](Lecture/Slides/1_Motivation.pdf)
* [Session 2: Introduction to R](Lecture/Slides/2_IntroductionR.pdf)
* [Session 3: Advanced R (Visualization and Programming)](Lecture/Slides/3_AdvancedR.pdf)
* [Session 4: Numerical Analysis](Lecture/Slides/4_Numerics.pdf)

**Exercise sheets**

* Homework 1: Introduction to R &bull; [Questions](Exercises/Homework_1_Questions.pdf) &bull; [Answers](Exercises/Homework_1_Answers.pdf) 
* Homework 2: Advanced R (Visualization and Programming) &bull; [Questions](Exercises/Homework_2_Questions.pdf) &bull; [Answers](Exercises/Homework_2_Answers.pdf) 
* Homework 3: Numerical Analysis &bull; [Questions](Exercises/Homework_3_Questions.pdf) &bull; [Answers](Exercises/Homework_3_Answers.pdf) 
* Homework 4: Optimization in R &bull; [Questions](Exercises/Homework_4_Questions.pdf) &bull; [Answers](Exercises/Homework_4_Answers.pdf) 

**Book**

*Work-in-progress*

**Misc**

* [Reference Card with R](ReferenceCard/R_Reference_Card.pdf) 

## Notes for lecturers

* All TeX source codes are also included in the repository. 
* This holds for [all figures](Graphics) that come as MS Visio, PDF and PNG. 
* For lectures, we also provide all questions used in the slides as a [raw file](Lecture/Questions). 
* The document contains a file ````install_libraries.R``` that automatically installs all packages that are used at one point or the other throughout the course.

## License

"Operations Research with R" by Stefan Feuerriegel is licensed under CC BY-SA 4.0. To view a copy of this license, visit https://creativecommons.org/licenses/by-sa/4.0

## Acknowledgments

This course wouldn't have been possible without the intensive help by many of my collaborators, including Julius Gordon and Joscha Märkle-Huß.
