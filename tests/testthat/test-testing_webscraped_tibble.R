#Testing whether the dataset is in the correct format
test_that("the scraped dataset is a tibble", {
  expect_true('tbl' %in% class(get_indigenous_covid_stats()))
})

#Testing whether it has the correct number of variables
test_that("the scraped dataset has 8 variables", {
  expect_equal(ncol(get_indigenous_covid_stats()),8)
})

#Testing whether it has the correct variable classes
test_that("the scraped dataset has numeric columns with numeric values", {
  expect_equal(object = unlist(lapply(get_indigenous_covid_stats(),class),
                               recursive = FALSE, use.names = FALSE),

               expected =  c('character', 'character', 'integer', 'integer',
                             'integer','integer', 'integer', 'integer')
              )
})
