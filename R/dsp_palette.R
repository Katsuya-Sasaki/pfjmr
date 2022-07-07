#' @title Display color palette indicated by user
#' @description \code{dsp_palette} Display the colors user indicated as the discrete rectangle
#'
#' @importFrom grDevices colorRampPalette
#' @importFrom graphics rect
#' @param color a character vector including colors (color name or hex)
#' @param size how many colors are displayed (default is the same length as color vector)
#' @return display colors rectangle
#' @export
#' @examples
#' # dsp_palette(c("red", "blue", "#444444"))

dsp_palette <- function(color, size = length(color)) {
  cols <- colorRampPalette(color)
  plot(NULL, xlim = c(0, size), ylim = c(0,1), axes = F, xlab = "", ylab = "")
  rect(0:(size-1), 0, 1:size, 1, col = cols(size))
}
