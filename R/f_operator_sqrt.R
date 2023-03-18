#' Allow applying error giving sqrt
#'
#' @param f a function that takes numeric value input
#'
#' @return transformed f to catch_cnd
#' @export
#'
#' @examples
#' g <- f_operator_sqrt(exp)
#' g(5)
f_operator_sqrt <- function(f){
  force(f)
  function(x){ # your code here (hint1: use catch_cnd() in pkg rlang)
    if(x < 0){
      rlang::catch_cnd(rlang::abort(.subclass = "invalid input",
                      message = paste(x, "is less than 0, it's sqrt does not exist")))
    } else{
      f(x)
    }
  }
}
