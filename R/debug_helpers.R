#' Helper functions to debug sl3 Learners
#'
#' @param learner the learner to debug
#' @param once if true, use \code{debugonce} instead of \code{debug}
#' @param enabled enable/disable the use of future (debugging is easier without futures)
#' @rdname debug_helpers
#' @export
debug_train <- function(learner, once = FALSE) {
  debugfun <- ifelse(once, debugonce, debug)
  debugfun(learner$.__enclos_env__$private$.train)

  # debug train_sublearners only if it's different from the base method that does nothing
  train_sublearners <- learner$.__enclos_env__$private$.train_sublearners
  base_train_sublearners <- Lrnr_base$private_methods$.train_sublearners
  if (body(train_sublearners) != body(base_train_sublearners)) {
    debugfun(learner$.__enclos_env__$private$.train_sublearners)
  }
}

#' @rdname debug_helpers
#' @export
debugonce_train <- function(learner) {
  debug_train(learner, once = TRUE)
}

#' @rdname debug_helpers
#' @export
debug_predict <- function(learner, once = FALSE) {
  debugfun <- ifelse(once, debugonce, debug)
  debugfun(learner$.__enclos_env__$private$.predict)
}

#' @rdname debug_helpers
#' @export
debugonce_predict <- function(learner) {
  debug_predict(learner, once = TRUE)
}

#' @rdname debug_helpers
#' @export
sl3_debug_mode <- function(enabled = TRUE) {
  options(sl3.enable.future = !enabled)
}
