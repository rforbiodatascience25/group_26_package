test_that("DNA to RNA conversion correct", {
  expect_equal(dnaToRna("TGTCATGCTGGCTGTTCTGTATAAGACACA"),
               "UGUCAUGCUGGCUGUUCUGUAUAAGACACA"
  )
})

