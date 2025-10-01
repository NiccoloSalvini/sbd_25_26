# (PART\*) Appendix {.unnumbered}


# Symbols, formulas, statistics and parameters {#StatisticsAndParameters}



## Symbols and standard errors



(ref:DEFSamplingDistributionPhat) Def. \@ref(def:DEFSamplingDistributionPhat)

(ref:DEFSamplingDistributionXbar) Def. \@ref(def:DEFSamplingDistributionXbar)

(ref:DEFSamplingDistributionDbar) Def. \@ref(def:DEFSamplingDistributionDbar)



\begin{table}
\centering\begingroup\fontsize{9}{11}\selectfont

\begin{tabular}{lcccc}
\toprule
\textbf{ } & \textbf{Parameter} & \textbf{Statistic} & \textbf{Standard error} & \textbf{S.E. formula reference}\\
\midrule
Proportion & $p$ & $\hat{p}$ & $\displaystyle\text{s.e.}(\hat{p}) = \sqrt{\frac{ \hat{p} \times (1 - \hat{p})}{n}}$ & (ref:DEFSamplingDistributionPhat)\\
Mean & $\mu$ & $\bar{x}$ & $\displaystyle\text{s.e.}(\bar{x}) = \frac{s}{\sqrt{n}}$ & (ref:DEFSamplingDistributionXbar)\\
Standard deviation & $\sigma$ & $s$ &  & \\
Mean difference & $\mu_d$ & $\bar{d}$ & $\displaystyle\text{s.e.}(\bar{d}) = \frac{s_d}{\sqrt{n}}$ & (ref:DEFSamplingDistributionDbar)\\
Diff. between means & $\mu_1 - \mu_2$ & $\bar{x}_1 - \bar{x}_2$ & $\displaystyle\text{s.e.}(\bar{x}_1 - \bar{x}_2)$ & --\\
\addlinespace
Odds ratio & Pop. OR & Sample OR & $\displaystyle\text{s.e.}(\text{sample OR})$ & --\\
Correlation & $\rho$ & $r$ &  & \\
Slope of regression line & $\beta_1$ & $b_1$ & $\text{s.e.}(b_1)$ & --\\
Intercept of regression line & $\beta_0$ & $b_0$ & $\text{s.e.}(b_0)$ & --\\
R-squared &  & $R^2$ &  & \\
\bottomrule
\end{tabular}
\endgroup{}
\end{table}







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

\begin{table}

\caption{(\#tab:OtherSymbols)Some symbols used}
\centering
\fontsize{9}{11}\selectfont
\begin{tabular}[t]{clc}
\toprule
\textbf{Symbol} & \textbf{Meaning} & \textbf{Reference}\\
\midrule
$H_0$ & Null hypothesis & (ref:AboutHypotheses)\\
$H_1$ & Alternative hypothesis & (ref:AboutHypotheses)\\
df & Degrees of freedom & (ref:TestStatObs)\\
\addlinespace
CI & Confidence interval & (ref:AboutCIs)\\
\addlinespace
s.e. & Standard error & (ref:StandardError)\\
$n$ & Sample size & \\
$\chi^2$ & The chi-squared test statistic & (ref:TestStatObs)\\
\bottomrule
\end{tabular}
\end{table}





