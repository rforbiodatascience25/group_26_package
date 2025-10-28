#' Protein Traduction
#'
#' @param codons Strings, provide a vector with codons to traduce to AA
#'
#' @returns String, the protein formed by the created AA
#' @export
#'
proteinTraduction <- function(codons){
  protein <- paste0(codonTable[codons], collapse = "")
  return(protein)
}
