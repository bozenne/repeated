% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/doc-data.R
\docType{data}
\name{vitaminL}
\alias{vitaminL}
\title{Data From The Vitamin Study (Long Format)}
\usage{
data(vitaminL)
}
\description{
Data from the vitamin Study,
a randomized study where the growth of guinea pigs was monitored before and after intake of vitamin E/placebo.
The weight of each guinea pig was recorded at the end of week 1, 3, 4, 5, 6, and 7. Vitamin E/placebo is given at the beginning of week 5.
This dataset is in the long format (i.e. one line per measurement).

\itemize{
\item group Treatment group: vitamin or placebo.
\item animal Identifier
\item weigth1 weight (in g) of the pig at the end of week 1 (before treatment).
\item weigth3 weight (in g) of the pig at the end of week 3 (before treatment).
\item weigth4 weight (in g) of the pig at the end of week 4 (before treatment).
\item weigth5 weight (in g) of the pig at the end of week 5 (after treatment).
\item weigth6 weight (in g) of the pig at the end of week 6 (after treatment).
\item weigth7 weight (in g) of the pig at the end of week 7 (after treatment).
}
}
\examples{
\dontrun{
data("vitaminW")
vitaminL <- reshape2::melt(vitaminW, id.vars = c("group","animal"),
                        measure.vars = paste0("weight",c(1,3:7)),
                        value.name = c("weight"), variable.name = "visit")
vitaminL$visit <- as.factor(as.numeric(as.factor(sapply(vitaminL$visit, gsub,
                             pattern = "weight", replacement = ""))))
vitaminL$time <- sapply(as.character(vitaminL$visit), switch,
                            "1" = 1,
                            "2" = 3,
                            "3" = 4,
                            "4" = 5,
                            "5" = 6,
                            "6" = 7)
save(vitaminL, file = "data/vitaminL.rda")
}
}
\references{
Crowder and Hand (1990, p. 27) Analysis of Repeated Measures.
}
\keyword{data}
