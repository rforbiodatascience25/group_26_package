#' Amino Acids Plotting
#'
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#'
#' @param aminoAcids Define an amino acid
#'
#' @returns an amino acid plot showing the amount of each unique AA
#' @export
#'
aminoAcidsPlot <- function(aminoAcids){
  uniqueAA <- aminoAcids |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(uniqueAA, function(amino_acid) stringr::str_count(string = aminoAcids, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["aminoAcids"]] <- rownames(counts)

  AAPlot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = aminoAcids, y = Counts, fill = aminoAcids)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(AAPlot)
}
