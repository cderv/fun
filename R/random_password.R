#' Generate a random password with a specified length
#'
#' This function generates a random passord sampled from the ASCII table.
#' @param length length of the password
#' @param replace sample from the ASCII table with (\code{TRUE}) or without
#'   (\code{FALSE}) replacement?
#' @param extended if \code{FALSE}, use alphanumeric characters only; otherwise
#'   use all the ASCII characters
#' @return a character string
#' @author Yihui Xie <\url{https://yihui.org}>
#' @seealso \code{\link{sample}}
#' @export
#' @examples
#' random_password()
#' # set the seed to get fixed password every time; you may just remember the
#' # seed and forget the real password because it's reproducible
#' set.seed(123)
#' random_password()
#' # long password
#' random_password(20, TRUE)
random_password = function(length = 12, replace = FALSE, extended = TRUE){
  x = if (extended) intToUtf8(32:126, TRUE) else c(0:9, letters, LETTERS)
  paste(sample(x, size = length, replace = replace), collapse = "")
}
