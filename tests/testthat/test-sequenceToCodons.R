test_that("sequenceToCodons works", {
  seq <- "ATGGCTTAACTG"
  expect_equal(sequenceToCodons(seq), c("ATG", "GCT", "TAA", "CTG"))
})
