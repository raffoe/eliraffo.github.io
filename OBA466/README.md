# Hershey's Optimization
Conducted by Alisha Barker, Jake Beder, Taylor Corbalis, Elijah Raffo, and Johnny Whitaker

## Guide
Our projects goal was to optimize the monthly profit for the Hershey's Kiss and Hug product line. We assumed that the weekly demand and inbound supply fluctuated. We also researched Hershey's to create realistic constraints related to the production process of these two items.

Below is the first model we constructed. We created this visual model to explain are assumptions for one of the many inbound to production to outbound operational flows that are in the Hershey’s production process .
![ModelTheory](ModelTheory.PNG)

Modeling the project helped decide which decision variables are needed for the optimization model. Using these decision variables, we mathematically constructed the optimization equation, as seen below. Both pictures show one week of modeling; however, our model, equations, and constraints apply to a 4-week rolling inventory and fluctuating demand cycle.
![MathTheory](MathTheory.PNG)

The [complete excel model](https://github.com/eliraffo/eliraffo.github.io/blob/master/OBA466/Hersheys_Solver.xlsx) contains  over 45 decision variables, and accounts for constraints like production capacity, milk supply, cocoa supply, demand constraints, and labor force. Note that the revenue/loss variables used to calculate the profit are estimates.

I would recommend reading our [paper](Hersheys_Paper.pdf) and/or viewing the [presentation](Hersheys_Presentation.pdf) learn more about our model, and to see how Hershey's can maximize profit by adjusting their production process for Kisses and Hugs. 

To view all files related to this project please visit the [Hershey's Optimization Homepage](https://github.com/eliraffo/eliraffo.github.io/tree/master/OBA466).
