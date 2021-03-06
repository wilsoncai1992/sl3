% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Lrnr_svm.R
\docType{class}
\name{Lrnr_svm}
\alias{Lrnr_svm}
\title{Support Vector Machines}
\format{\code{\link{R6Class}} object.}
\usage{
Lrnr_svm
}
\value{
Learner object with methods for training and prediction. See
\code{\link{Lrnr_base}} for documentation on learners.
}
\description{
This learner uses \code{\link[e1071]{svm}} from \code{e1071} to fit a support
vector machine (SVM).
}
\section{Parameters}{

\describe{
\item{\code{scale = TRUE}}{A logical vector indicating the variables to be
scaled. For a detailed description, please consult the documentation for
\code{\link[e1071]{svm}}.}
\item{\code{type = NULL}}{SVMs can be used as a classification machine, as
a regression machine, or for novelty detection. Depending of whether the
outcome is a factor or not, the default setting for this argument is
"C-classification" or "eps-regression", respectively. This may be
overwritten by setting an explicit value. For a full set of options,
please consult the documentation for \code{\link[e1071]{svm}}.}
\item{\code{kernel = "radial"}}{The kernel used in training and predicting.
You might consider changing some of the optional parameters, depending on
the kernel type. Options for kernels include: "linear", "polynomial",
"radial" (the default), "sigmoid". For a detailed description, please
consult the documentation for \code{\link[e1071]{svm}}.}
\item{\code{fitted = TRUE}}{Logical indicating whether the fitted values
should be computed and included in the model fit object or not
(default: \code{TRUE}).}
\item{\code{probability = FALSE}}{Logical indicating whether the model
should allow for probability predictions (default: \code{FALSE}).}
\item{\code{...}}{Other parameters passed to \code{\link[e1071]{svm}}.
See its documentation for details.}
}
}

\seealso{
Other Learners: \code{\link{Custom_chain}},
  \code{\link{Lrnr_HarmonicReg}}, \code{\link{Lrnr_arima}},
  \code{\link{Lrnr_bartMachine}}, \code{\link{Lrnr_base}},
  \code{\link{Lrnr_bilstm}}, \code{\link{Lrnr_condensier}},
  \code{\link{Lrnr_cv}}, \code{\link{Lrnr_dbarts}},
  \code{\link{Lrnr_define_interactions}},
  \code{\link{Lrnr_expSmooth}},
  \code{\link{Lrnr_glm_fast}}, \code{\link{Lrnr_glmnet}},
  \code{\link{Lrnr_glm}}, \code{\link{Lrnr_grf}},
  \code{\link{Lrnr_h2o_grid}}, \code{\link{Lrnr_hal9001}},
  \code{\link{Lrnr_independent_binomial}},
  \code{\link{Lrnr_lstm}}, \code{\link{Lrnr_mean}},
  \code{\link{Lrnr_nnls}}, \code{\link{Lrnr_optim}},
  \code{\link{Lrnr_pca}},
  \code{\link{Lrnr_pkg_SuperLearner}},
  \code{\link{Lrnr_randomForest}},
  \code{\link{Lrnr_ranger}}, \code{\link{Lrnr_rpart}},
  \code{\link{Lrnr_rugarch}}, \code{\link{Lrnr_sl}},
  \code{\link{Lrnr_solnp_density}},
  \code{\link{Lrnr_solnp}}, \code{\link{Lrnr_stratified}},
  \code{\link{Lrnr_subset_covariates}},
  \code{\link{Lrnr_tsDyn}}, \code{\link{Lrnr_xgboost}},
  \code{\link{Pipeline}}, \code{\link{Stack}},
  \code{\link{define_h2o_X}},
  \code{\link{undocumented_learner}}
}
\concept{Learners}
\keyword{data}
