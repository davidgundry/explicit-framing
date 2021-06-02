
library("pwr")
# These calculations are to determine the required sample size for the Effect of Experiment Framing on Game
# Data Experiment, comparing Adjective Game in a high framing and low framing condition.
#
# Two hypotheses will be tested, each independent of the other and with an alpha of 0.05.  The first is that
# players will provide lower accuracy data in the low framing condition. The second is that the players will
# report higher enjoyment in the low framing condition.

# Hypothesis 1 (based on previous experiments)
# A two-tailed Mann-Whitney U test will be used to test whether the distribution of Accuracy
# differs significantly between the +Framing condition than the -Framing condition. α = 0.05
alt <- "two.sided"
observedEffectSize <- 1.0005893861300805 # From exploratory analysis of the "Enjoyment and data
                                         # quality in a game for human-subject data collection"
                                         # experiments. We found this decrease in accuracy between
                                         # experiment 1 and experiment 2 in the control condition. One
                                         # main change was whether explicit instuctions for
                                         # grammaticality were given
pwr.t.test(d = observedEffectSize, sig.level = 0.05, power = 0.8, alternative = alt)


# Hypothesis 1 (effect size of interest)
effectSizeOfInterest <- cohen.ES(test = "t", size = "medium")$effect.size
                                         # Because the previous experiment is not directly comparable
                                         # and other factors may have significantly contributed (such as
                                         # history effects), we should still check for medium sized effects.
                                         # This assumes about half of the previously observed effect
                                         # was to do with framing(/instructions)
pwr.t.test(d = effectSizeOfInterest, sig.level = 0.05, power = 0.8, alternative = alt)


# Hypothesis 2
# A two-tailed two-sample t-test will be used to test whether the mean scores of Enjoyment
# are greater in the low-framing condition than the high-framing condition. α = 0.05.

# Previous experiments suggest expected effect sizes might be tiny. While this is an interesting hypothesis
# test it is not the focus of the experiment and not worth the money to do a high-powered test. Therefore
# we will not base the sample size calculation on this hypothesis.


# Hypothesis 3
# This is a manipulation check relating to hypothesis 1. We assume the effect size will be relative to the
# effect measured in that hypothesis so will not base our sample size calculation on this hypothesis.


# Largest sample size is is 63.76561 per group. These sample sizes are based on t-tests, which can be less efficient
# than Wilcoxon signed rank tests. The Asymptotic Relative Efficiency (ARE) of a Wilcoxon test relative to a t-test
# has a lower bound of 0.864, meaning that at worst we require 1/0.864 = 1.1574 times the sample size of a t test (Riffenburgh, 2012).
sampleSize <- 63.76561/0.864
sampleSize

# Which we will round to 74. This makes the total sample size (both groups) 148.




# References

# R.H. Riffenburgh, 2012. Chapter 18 - Sample Size Estimation and Meta-Analysis, in: Statistics in Medicine (Third Edition),
# Editor(s): R.H. Riffenburgh, Academic Press, pp. 365-391, [Relevant section available at:
# https://www.sciencedirect.com/topics/mathematics/asymptotic-relative-efficiency]
