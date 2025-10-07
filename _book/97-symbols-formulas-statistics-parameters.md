# (PART\*) Appendix {.unnumbered}


# Symbols, formulas, statistics and parameters {#StatisticsAndParameters}



## Symbols and standard errors



(ref:DEFSamplingDistributionPhat) Def. \@ref(def:DEFSamplingDistributionPhat)

(ref:DEFSamplingDistributionXbar) Def. \@ref(def:DEFSamplingDistributionXbar)

(ref:DEFSamplingDistributionDbar) Def. \@ref(def:DEFSamplingDistributionDbar)



<table>
<caption>(\#tab:ParametersStatistics)Some sample statistics used to estimate population parameters. Empty table cells means that these are not studied in this textbook. The dashes means that no formula is given in this textbook.</caption>
 <thead>
  <tr>
   <th style="text-align:left;font-weight: bold;">   </th>
   <th style="text-align:center;font-weight: bold;"> Parameter </th>
   <th style="text-align:center;font-weight: bold;"> Statistic </th>
   <th style="text-align:center;font-weight: bold;"> Standard error </th>
   <th style="text-align:center;font-weight: bold;"> S.E. formula reference </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Proportion </td>
   <td style="text-align:center;"> $p$ </td>
   <td style="text-align:center;"> $\hat{p}$ </td>
   <td style="text-align:center;"> $\displaystyle\text{s.e.}(\hat{p}) = \sqrt{\frac{ \hat{p} \times (1 - \hat{p})}{n}}$ </td>
   <td style="text-align:center;"> (ref:DEFSamplingDistributionPhat) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Mean </td>
   <td style="text-align:center;"> $\mu$ </td>
   <td style="text-align:center;"> $\bar{x}$ </td>
   <td style="text-align:center;"> $\displaystyle\text{s.e.}(\bar{x}) = \frac{s}{\sqrt{n}}$ </td>
   <td style="text-align:center;"> (ref:DEFSamplingDistributionXbar) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Standard deviation </td>
   <td style="text-align:center;"> $\sigma$ </td>
   <td style="text-align:center;"> $s$ </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:center;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Mean difference </td>
   <td style="text-align:center;"> $\mu_d$ </td>
   <td style="text-align:center;"> $\bar{d}$ </td>
   <td style="text-align:center;"> $\displaystyle\text{s.e.}(\bar{d}) = \frac{s_d}{\sqrt{n}}$ </td>
   <td style="text-align:center;"> (ref:DEFSamplingDistributionDbar) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Diff. between means </td>
   <td style="text-align:center;"> $\mu_1 - \mu_2$ </td>
   <td style="text-align:center;"> $\bar{x}_1 - \bar{x}_2$ </td>
   <td style="text-align:center;"> $\displaystyle\text{s.e.}(\bar{x}_1 - \bar{x}_2)$ </td>
   <td style="text-align:center;"> -- </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Odds ratio </td>
   <td style="text-align:center;"> Pop. OR </td>
   <td style="text-align:center;"> Sample OR </td>
   <td style="text-align:center;"> $\displaystyle\text{s.e.}(\text{sample OR})$ </td>
   <td style="text-align:center;"> -- </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> $\rho$ </td>
   <td style="text-align:center;"> $r$ </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:center;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Slope of regression line </td>
   <td style="text-align:center;"> $\beta_1$ </td>
   <td style="text-align:center;"> $b_1$ </td>
   <td style="text-align:center;"> $\text{s.e.}(b_1)$ </td>
   <td style="text-align:center;"> -- </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Intercept of regression line </td>
   <td style="text-align:center;"> $\beta_0$ </td>
   <td style="text-align:center;"> $b_0$ </td>
   <td style="text-align:center;"> $\text{s.e.}(b_0)$ </td>
   <td style="text-align:center;"> -- </td>
  </tr>
  <tr>
   <td style="text-align:left;"> R-squared </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:center;"> $R^2$ </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:center;">  </td>
  </tr>
</tbody>
</table>







## Confidence intervals

Almost all **confidence intervals** have the form

\[ 
    \text{statistic} \pm ( \text{multiplier} \times \text{s.e.}(\text{statistic})).
\]

**Notes:**

* The multiplier is *approximately* 2 for an *approximate* 95% CI (based on the 68--95--99.7 rule).
* $\text{multiplier} \times \text{s.e.}(\text{statistic})$ is called the *margin of error*.
* Confidence intervals for *odds ratios* are slightly different, so **this formula does not apply for odds ratios**.
  For the same reason, a standard error for ORs is not given.


## Hypothesis testing

For many **hypothesis tests**, the *test statistic*\index{test statistic} is a $t$-score, which has the form:

\[
  t = \frac{\text{statistic} - \text{parameter}}{\text{s.e.}(\text{statistic})}.
\]

**Notes:**

* Since $t$-scores are a little like $z$-scores, the 68--95--99.7 rule can be used to *approximate* $P$-values.
* Tests involving *odds ratios* do not use $t$-scores, so **this formula does not apply for tests involving odds ratios**.
* For tests involving odds ratios, the *test statistic*\index{test statistic}
  is a $\chi^2$ score and not $t$-score.
  For the same reason, a standard error for ORs is not given.
* The $\chi^2$ statistic is approximately like a $z$-score with a value of (where $\text{df}$ is the 'degrees of freedom' given in the software output):

\[
   \sqrt{\frac{\chi^2}{\text{df}}}.
\]

 
(ref:AboutHypotheses) Sect. \@ref(AboutHypotheses)

(ref:TestStatObs) Sect. \@ref(TestStatObs)

(ref:AboutCIs) Chap. \@ref(AboutCIs)

(ref:StandardError) Def. \@ref(def:StandardError)



## Other formulas


* To [estimate the sample size needed](#EstimatingSampleSize) when **estimating a proportion**: $\displaystyle n = \frac{1}{(\text{Margin of error})^2}$.
* To [estimate the sample size needed](#EstimatingSampleSize) when **estimating a mean**: $\displaystyle n = \left( \frac{2\times s}{\text{Margin of error}}\right)^2$.
* To [calculate $z$-scores](#z-scores): $\displaystyle z = \frac{x - \mu}{\sigma}$ or, more generally, $\displaystyle z = \frac{\text{specific value of variable} - \text{mean of variable}}{\text{measure of variable's variation}}$.
* The [**unstandardizing formula**](#Unstandardising): $x = \mu + (z\times \sigma)$.

**Notes:**

* In **sample size calculations**, always **round up** the sample size found from the above formulas.


## Other symbols used

<table>
<caption>(\#tab:OtherSymbols)Some symbols used</caption>
 <thead>
  <tr>
   <th style="text-align:center;font-weight: bold;"> Symbol </th>
   <th style="text-align:left;font-weight: bold;"> Meaning </th>
   <th style="text-align:center;font-weight: bold;"> Reference </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;"> $H_0$ </td>
   <td style="text-align:left;"> Null hypothesis </td>
   <td style="text-align:center;"> (ref:AboutHypotheses) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> $H_1$ </td>
   <td style="text-align:left;"> Alternative hypothesis </td>
   <td style="text-align:center;"> (ref:AboutHypotheses) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> df </td>
   <td style="text-align:left;"> Degrees of freedom </td>
   <td style="text-align:center;"> (ref:TestStatObs) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> CI </td>
   <td style="text-align:left;"> Confidence interval </td>
   <td style="text-align:center;"> (ref:AboutCIs) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> s.e. </td>
   <td style="text-align:left;"> Standard error </td>
   <td style="text-align:center;"> (ref:StandardError) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> $n$ </td>
   <td style="text-align:left;"> Sample size </td>
   <td style="text-align:center;">  </td>
  </tr>
  <tr>
   <td style="text-align:center;"> $\chi^2$ </td>
   <td style="text-align:left;"> The chi-squared test statistic </td>
   <td style="text-align:center;"> (ref:TestStatObs) </td>
  </tr>
</tbody>
</table>





