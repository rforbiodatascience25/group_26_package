#' Rnadom DNA Sample
#'
#' @param inputSize Int, input size for desired DNA random sample
#'
#' @returns String, outputs a DNA random sample based on the provided size
#' @export
#'
randomDna <- function(inputSize){
  sizedSample <- sample(c("A", "T", "G", "C"), size = inputSize, replace = TRUE)
  randomSizedDnaSample <- paste0(sizedSample, collapse = "")
  return(randomSizedDnaSample)
}
