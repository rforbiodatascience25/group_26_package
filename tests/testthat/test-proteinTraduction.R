test_that("protein tracuction works", {
  expect_equal(proteinTraduction(c("CUG","CAU","CUU")), "LHL")
})
