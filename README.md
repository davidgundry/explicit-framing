# Effect of Experiment Framing on Game Data

This is a repository of materials and data for the Effect of Experiment Framing on Game Data study.

## Directory Structure

* `data/` - processed/anonymised data
* `out/` - output of analysis scripts including data and graphs. Logs of script console output is saved here too
* `python/` - python scripts
* `r/` - r scripts
* `design/` - ethics, preregistration documents, etc.
* `final/` - versions of documents that have been officially submitted somewhere
* `materials/` - contains materials that were used in the experiment
* `img/` - screenshots of the game
* `raw/` - raw data stored here before processing and anonymisation

## Pre-Registration

Pre-registration documents are found in `design/`. Dated uploads to OSF (which should match the records on OSF) are in `final/`. The power analysis script used in the pre-registration can be found in `r/`, which generated `out/power-anaysis.Rout`. You can generate this using the following command:

    R CMD BATCH --quiet r/power-analysis.r out/power-analysis.Rout

## Why 13 inputs?

From [intrinsic elicitation 2](https://github.com/davidgundry/intrinsic-elicitation-2), we found the difference in duration between conditions (which would primarily be from the game tutorial) to be 92.17 seconds (= 593.62 - 501.45). If we include this time in the time stated to participants of 7 minutes, that gives an average play time of 327 seconds. It means that most players should be playing the main game for a bit over 5 minutes. From the same experiment we found that the average time per input was 15.37 with a standard deviation of 5.07. We found the value of 2 standard deviations above the mean for this group (above which you'd expect only approximately 5% of the data). This was equivalent to 25.5 seconds per input. Over 327 seconds this works out to 12.82 inputs. Rounding gives 13 inputs.

# Data collection

148 participants @ £1 per participant on Prolific = £197.33. If we go over, we'll pay no more than £224 (168 participants)