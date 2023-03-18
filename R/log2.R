#' log that gives error not warning
#'
#' @param x numeric value
#'
#' @return log of x
#' @export
#'
#' @examples
#' log2(25)
log2 = function(x){
  if(x <= 0){
    rlang::abort("Error: negative input, NA introduced!")
  } else{
    log(x)
  }
}
