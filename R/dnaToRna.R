#' DNA to RNA Converter
#'
#' @param DNAString string of a DNA sequence
#'
#' @returns RNA string
#' @export
#'
#'
dnaToRna <- function(DNAString){
  RNAString <- gsub("T", "U", DNAString)
  return(RNAString)
}
