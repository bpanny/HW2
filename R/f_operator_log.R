#' Allow applying error-giving log
#'
#' @param f a function that takes a numeric value
#'
#' @return transformed f to catch_cnd
#' @export
#'
#' @examples
#' g <- f_operator_log(exp)
#' g(5)

f_operator_log <- function(f){
  force(f)
  function(x){ # your code here (hint1: use catch_cnd() in pkg rlang)
    if(x <= 0){
      rlang::catch_cnd(rlang::abort(.subclass = "invalid input",
                      message = paste(x, "is not positive, it's log does not exist")))
    } else{
      f(x)
    }
  }
}
