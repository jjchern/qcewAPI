
#' @title Get QCEW Data by Area
#'
#' @description A function takes a year, quarter, and area argument and
#' returns a data frame containing the associated area data.
#' @export
#'
#' @importFrom tibble as_data_frame
#'
#' @param year (character, or numeric) Possible values: "1990", "1991", ..., "2015".
#' @param qtr (character, or numeric) Possible values: "1", "2", "3", "4", and "a" for annual average.
#' @param area (character, or numeric) Possible values: \url{http://www.bls.gov/cew/doc/titles/area/area_titles.htm}
#'
#' @return Return a tibble, i.e., modern data frame.
#'
#' @examples \dontrun{
#' michigan_data = qcewAPI::get_area("2013", "a", "26000")
#' michigan_data = qcewAPI::get_area(2013, "a", 26000)
#' }
#'
get_area = function(year, qtr, area){
        url = "http://www.bls.gov/cew/data/api/YEAR/QTR/area/AREA.csv"
        url = sub("YEAR", year, url, ignore.case=FALSE)
        url = sub("QTR", qtr, url, ignore.case=FALSE)
        url = sub("AREA", area, url, ignore.case=FALSE)
        df = utils::read.csv(url, header = TRUE, sep = ",", quote="\"", dec=".", na.strings=" ", skip=0)
        tibble::as_data_frame(df)
}

#' @title Get QCEW Data by Industry
#'
#' @description A function takes a year, quarter, and industry code and
#' returns a data frame containing the associated industry data.
#' @export
#'
#' @importFrom tibble as_data_frame
#'
#' @param year (character, or numeric) Possible values: "1990", "1991", ..., "2015".
#' @param qtr (character, or numeric) Possible values: "1", "2", "3", "4", and "a" for annual average.
#' @param industry (character, or numeric) Some industry codes contain hyphens. The CSV files use
#' underscores instead of hyphens. So 31-33 becomes 31_33.
#' Possible values: \url{http://www.bls.gov/cew/doc/titles/industry/industry_titles.htm}
#'
#' @return Return a tibble, i.e., modern data frame.
#'
#' @examples \dontrun{
#' construction = qcewAPI::get_industry("2013", "1", "1012")
#' construction = qcewAPI::get_industry(2013, 1, 1012)
#' }
#'
get_industry = function(year, qtr, industry){
        url = "http://www.bls.gov/cew/data/api/YEAR/QTR/industry/INDUSTRY.csv"
        url = sub("YEAR", year, url, ignore.case=FALSE)
        url = sub("QTR", qtr, url, ignore.case=FALSE)
        url = sub("INDUSTRY", industry, url, ignore.case=FALSE)
        df = utils::read.csv(url, header = TRUE, sep = ",", quote="\"", dec=".", na.strings=" ", skip=0)
        tibble::as_data_frame(df)
}

#' @title Get QCEW Data by Establishment Size
#'
#' @description A function takes a year and establishment size class code
#' and returns an array containing the associated size data. Size data
#' is only available for the first quarter of each year.
#' @export
#'
#' @importFrom tibble as_data_frame
#'
#' @param year (character, or numeric) Possible values: "1990", "1991", ..., "2015".
#' @param size (character, or numeric) Possible values: \url{http://www.bls.gov/cew/doc/titles/size/size_titles.htm}
#'
#' @return Return a tibble, i.e., modern data frame.
#'
#' @examples \dontrun{
#' size_100_249 = qcewAPI::get_size("2013", "6")
#' size_100_249 = qcewAPI::get_size(2013, 6)
#' }
#'
get_size <- function(year, size){
        url = "http://www.bls.gov/cew/data/api/YEAR/1/size/SIZE.csv"
        url = sub("YEAR", year, url, ignore.case=FALSE)
        url = sub("SIZE", size, url, ignore.case=FALSE)
        df = utils::read.csv(url, header = TRUE, sep = ",", quote="\"", dec=".", na.strings=" ", skip=0)
        tibble::as_data_frame(df)
}
