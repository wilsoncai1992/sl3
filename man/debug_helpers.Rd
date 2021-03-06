% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/debug_helpers.R
\name{debug_train}
\alias{debug_train}
\alias{debugonce_train}
\alias{debug_predict}
\alias{debugonce_predict}
\alias{sl3_debug_mode}
\title{Helper functions to debug sl3 Learners}
\usage{
debug_train(learner, once = FALSE)

debugonce_train(learner)

debug_predict(learner, once = FALSE)

debugonce_predict(learner)

sl3_debug_mode(enabled = TRUE)
}
\arguments{
\item{learner}{the learner to debug}

\item{once}{if true, use \code{debugonce} instead of \code{debug}}

\item{enabled}{enable/disable the use of future (debugging is easier without futures)}
}
\description{
Helper functions to debug sl3 Learners
}
