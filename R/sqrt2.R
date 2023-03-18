#' sqrt that gives error not warning
#'
#' @param x a numeric value
#'
#' @return sqrt of x
#' @export
#'
#' @examples#
#' sqrt2(25)
sqrt2 = function(x){
  if(x < 0){
    rlang::abort("Error: negative input, NA introduced!")
  } else{
    sqrt(x)
  }
}
