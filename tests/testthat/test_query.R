context("query")

test_that("query returns a data frame", {
        testthat::skip_on_cran()
        testthat::skip_on_travis()
        testthat::skip_on_appveyor()

        output_area = get_area("2013", "a", "26000")
        expect_is(output_area, "tbl_df")

        output_industry = get_industry("2013", "1", "1012")
        expect_is(output_industry, "tbl_df")

        output_size = get_size("2013", "6")
        expect_is(output_size, "tbl_df")
})
