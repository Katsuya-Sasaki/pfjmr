#' @title Multiple packages installation at once
#' @description \code{pkgs.install} Install indicated packages at once
#'
#' @importFrom utils install.packages
#' @param ... package names, either single string or multiple vector is OK.
#' @return execution of packages install
#' @export
#' @examples
#' pkgs_all <- c("tidyr", "dplyr", "ggplot2")
#' pkgs.install(pkgs_all)


pkgs.install <- function(...) {
  pkgs <- unlist(list(...))
  lapply(pkgs, function(x) install.packages(x, repos = "http://cran.us.r-project.org")) -> devnul
}
