% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/doc-data.R
\docType{data}
\name{potassiumSingleW}
\alias{potassiumSingleW}
\title{Data From The Potassium Intake Study (Wide Format)}
\usage{
data(potassiumSingleW)
}
\description{
Data from the potassium intake study,
a randomized placebo-controlled crossover study where the effect of potassium supplement (90 mmol/day) on the renin-angiostensin-aldosteron system (RAAS) was assessed.
This dataset is in the wide format (i.e. one line per patient).

\itemize{
\item id Patient identifier
\item sequence Treatment group to which the patient has been randomized.
\item treatment1 Treatment during the first time period.
\item treatment2 Treatment during the second time period
\item auc1 Area under the curve of ?? during the first time period
\item auc2 Area under the curve of ?? during the second time period 
\item bsauc1 ??
\item aldo1 ??
\item aldo2 ??
}
}
\examples{
data(potassiumSingleW)
str(potassiumSingleW)
}
\references{
Dreier et al. Effect of increased potassium intake on the reninangiotensinaldosterone system and subcutaneous resistance arteries: a randomized crossover study,
Nephrol Dial Transplant (2020) 110. doi: 10.1093/ndt/gfaa114
}
\keyword{data}
