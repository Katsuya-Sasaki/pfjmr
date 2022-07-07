#' @title Check uninstalled packages
#' @description \code{pkg.not.installed} Check uninstalled packages
#'
#' @importFrom utils install.packages
#' @param ... package names, either single string or multiple vector is OK.
#' @return character strings
#' @export
#' @examples
#' pkgs_all <- c("tidyr", "dplyr", "ggplot2")
#' pkg.not.installed(pkgs_all)


pkg.not.installed <- function(...)
{
  pkgs <- unlist(list(...))
  lib.all <- base::library()
  lib.name <- lib.all$results

  if (length(pkgs) == 1) {
    if (sum(pkgs == lib.name) == 0) return(pkgs)
    else return(NULL)
  }

  index.installed <- which(pkgs %in% lib.name)
  if (length(index.installed) == 0) return(pkgs)
  else {
    uninstalled <- pkgs[-index.installed]
    if (length(uninstalled) == 0L) return(NULL)
    else return(uninstalled)
  }
}

