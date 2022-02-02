## [Power Analysis:](https://github.com/SB-27182/R_Statistical_Intuitions/blob/master/PowerAnalysis/Power_function_ofSamples.R)
<p align="center">
  <kbd>
  <img src="https://github.com/SB-27182/R_Statistical_Intuitions/blob/master/PowerAnalysis/imgs/rejectionPower_300Samples.png" width=291 height=300/>
  </kbd>
  &nbsp
    <kbd>
  <img src="https://github.com/SB-27182/R_Statistical_Intuitions/blob/master/PowerAnalysis/imgs/rejectionPower_1000Samples.png" width=291 height=300/>
  </kbd>
  </p>
  &nbsp
  <p align="center">
  <kbd>
  <img src="https://github.com/SB-27182/R_Statistical_Intuitions/blob/master/PowerAnalysis/imgs/PowerAnalysis_1.png" width=291 height=300/>
  </kbd>
  </p>
  
***Top Left:*** *300 sample are generated from an actual(blue) and a wrong null-hypothesis density(red).* <br> ***Top Right:*** *1000 sample are generated from an actual(blue) and a wrong null-hypothesis density(red).* <br><br> ***Bottom:*** *A monte carlo simulation is performed wherein the sample cardinality is increased linearly from 0 to 600. We note the plateu in our capacity to reject the null after 200 observations in said sample.*


<br>
<br>


## [Boot-Strap and it's Confidence Intervals:](https://github.com/SB-27182/R_Statistical_Intuitions/blob/master/CIs_Normal_vs_bootStrap/bootCIs.R)
<p align="center">
  <kbd>
  <img src="https://github.com/SB-27182/R_Statistical_Intuitions/blob/master/CIs_Normal_vs_bootStrap/imgs/NormalConfidenceIntervals_alphaOf005.png" width=291 height=300/>
  </kbd>
  &nbsp
    <kbd>
  <img src="https://github.com/SB-27182/R_Statistical_Intuitions/blob/master/CIs_Normal_vs_bootStrap/imgs/BoostStrapCIs_alpha005.png" width=291 height=300/>
  </kbd>
  </p>
  
***Left:*** *Confidence Intervals of 100 Monte-Carlo simulations using an alpha values of 0.05. Indeed, the confidence interval fails to capture the true parameter value 0.05% of the time, just as requested.* <br><br> ***Right:*** *From a single normaly distributed sample, 300 Monte-Carlo simulations sample from the parent sample to acquire a boot-strap distribution. The bootrsap sample are used to generate confidence intervals, none of which seem to fall out of the confidence interval for the original parent distribution.*

<br>
<br>

## [(negative) Maximum Likelihood Estimation Visualization:](https://github.com/SB-27182/R_Statistical_Intuitions/blob/master/MLE_visualization_logVsExp/normalLikelihood_expLikelihood.R)
<p align="center">
  <kbd>
  <img src="https://github.com/SB-27182/R_Statistical_Intuitions/blob/master/MLE_visualization_logVsExp/imgs/normLikelihoodExp.png" width=291 height=300/>
  </kbd>
  &nbsp
    <kbd>
  <img src="https://github.com/SB-27182/R_Statistical_Intuitions/blob/master/MLE_visualization_logVsExp/imgs/log_linear_weights.png" width=291 height=300/>
  </kbd>
  </p>
  
***Left:*** *The (negative) maximum likelihood function using a discrete sample. We may note that despite the fact that the sample is discrete, the function is continious. This is of-course because the observations in the sample are the parameters of the loss-function and the PDF-parameter (mean in this case) are the domain, whilst the codomain is the joint density of the observations* <br><br> ***Right:*** *Like the left but the joint density is the left's monotonic logarithm. We can see why machine learning criterions that explicitly use a likelihood-function are more stable when using the log of the likelihood-function.*

