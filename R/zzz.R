assert <- function(x, y) {
  if (!is.null(x)) {
    if (!inherits(x, y)) {
      stop(deparse(substitute(x)), " must be of class ",
        paste0(y, collapse = ", "), call. = FALSE)
    }
  }
}

last <- function(x) x[length(x)]

pdfimages_exists <- function() {
  z <- Sys.which("pdfimager")
  if (z == "") stop("`pdfimager` not found, see ?pdfimg_meta")
  return(TRUE)
}

err_chk <- function(z) {
  if (z$status != 0 || length(z$stderr) > 0) {
    err <- rawToChar(z$stderr)
    err <- gsub("Error: ", "", err)
    stop(err, call. = FALSE)
  }
}
