#' pdimg_help
#' 
#' print pdfimages help
#' 
#' @export
#' @return nothing, `cat()` to console
#' @examples
#' pdimg_help()
pdimg_help <- function() {
  pdfimages_exists()
  z <- sys::exec_internal("pdfimager", "-help", error = FALSE)
  cat(rawToChar(z$stderr))
}
