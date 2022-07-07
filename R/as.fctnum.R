#' @title Convert from factor into numeric vector
#' @description \code{as.fctnum} Convert the class of vector from factor into numeric
#'
#' @param x a vector of factor whose elements are numeric
#' @return a vector as numeric
#' @export
#' @examples
#' # as.fctnum(y)

as.fctnum <- function(x) {
  as.numeric(as.character(x))
}
