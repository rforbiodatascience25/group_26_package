#' Title
#'
#' @param sequence the RNA sequence
#' @param start starting position
#'
#' @returns codons from the sequence
#' @export
sequenceToCodons <- function(sequence, start = 1){
  sequenceLength <- nchar(sequence)
  codons <- substring(sequence,
                      first = seq(from = start, to = sequenceLength-3+1, by = 3),
                      last = seq(from = 3+start-1, to = sequenceLength, by = 3))
  return(codons)
}
