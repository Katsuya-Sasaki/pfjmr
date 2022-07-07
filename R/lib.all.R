#' @title Load multiple packages at once
#' @description  \code{lib.all} Load all indicated packages
#'
#' @importFrom utils install.packages
#' @param ... package names, either single string or multiple vector is OK.
#' @param suppress logical whether suppress packages startup messages (default is TRUE).
#' @return execution of loading libraries
#' @export
#' @examples
#' pkgs_all <- c("tidyr", "dplyr", "ggplot2")
#' lib.all(pkgs_all, suppress = FALSE)


lib.all <- function(..., suppress = TRUE) {
  libs <- unlist(list(...))
  if (suppress) {
    invisible(
      lapply(libs, function(x) invisible(suppressPackageStartupMessages(base::library(package = x, character.only = T))))
    )
  } else {
    invisible(
      lapply(libs, function(x) invisible(base::library(package = x, character.only = T)))
    )
  }
}


