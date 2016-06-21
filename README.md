
<!-- README.md is generated from README.Rmd. Please edit that file -->
About
=====

[![Travis-CI Build Status](https://travis-ci.org/jjchern/qcewAPI.svg?branch=master)](https://travis-ci.org/jjchern/qcewAPI) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/jjchern/qcewAPI?branch=master&svg=true)](https://ci.appveyor.com/project/jjchern/qcewAPI) [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/qcewAPI)](https://cran.r-project.org/package=qcewAPI)

The goal of `qcewAPI` is to wrap the [QCEW Open Data Access RScript](http://data.bls.gov/cew/doc/access/data_access_examples.htm#RSCRIPT) provided by the Bureau of Labor Statistics in an R package, and provide more documentations and examples.

-   [QCEW Overview](http://www.bls.gov/cew/cewover.htm):

    > Publicly available files include data on the number of establishments, monthly employment, and quarterly wages, by NAICS industry, by county, by ownership sector, for the entire United States.

    > Employment data under the QCEW program represent the number of covered workers who worked during, or received pay for, the pay period including the 12th of the month. Excluded are members of the armed forces, the self-employed, proprietors, domestic workers, unpaid family workers, and railroad workers covered by the railroad unemployment insurance system.

    > The QCEW data are used as the benchmark source for employment by the Current Employment Statistics program and the Occupational Employment Statistics program.

Installation
============

``` r
# install.packages("devtools")
devtools::install_github("jjchern/qcewAPI")
```

Usage
=====

Get Annual Average QCEW Data for Michigan in 2013
-------------------------------------------------

``` r
qcewAPI::get_area(year = "2013", qtr = "a", area = "26000")
#> Source: local data frame [2,822 x 38]
#> 
#>    area_fips own_code industry_code agglvl_code size_code  year    qtr
#>        <int>    <int>        <fctr>       <int>     <int> <int> <fctr>
#> 1      26000        0            10          50         0  2013      A
#> 2      26000        1            10          51         0  2013      A
#> 3      26000        1           102          52         0  2013      A
#> 4      26000        1          1021          53         0  2013      A
#> 5      26000        1          1022          53         0  2013      A
#> 6      26000        1          1023          53         0  2013      A
#> 7      26000        1          1024          53         0  2013      A
#> 8      26000        1          1025          53         0  2013      A
#> 9      26000        1          1026          53         0  2013      A
#> 10     26000        1          1027          53         0  2013      A
#> ..       ...      ...           ...         ...       ...   ...    ...
#> Variables not shown: disclosure_code <fctr>, annual_avg_estabs <int>,
#>   annual_avg_emplvl <int>, total_annual_wages <dbl>, taxable_annual_wages
#>   <dbl>, annual_contributions <int>, annual_avg_wkly_wage <int>,
#>   avg_annual_pay <int>, lq_disclosure_code <fctr>, lq_annual_avg_estabs
#>   <dbl>, lq_annual_avg_emplvl <dbl>, lq_total_annual_wages <dbl>,
#>   lq_taxable_annual_wages <dbl>, lq_annual_contributions <dbl>,
#>   lq_annual_avg_wkly_wage <dbl>, lq_avg_annual_pay <dbl>,
#>   oty_disclosure_code <fctr>, oty_annual_avg_estabs_chg <int>,
#>   oty_annual_avg_estabs_pct_chg <dbl>, oty_annual_avg_emplvl_chg <int>,
#>   oty_annual_avg_emplvl_pct_chg <dbl>, oty_total_annual_wages_chg <dbl>,
#>   oty_total_annual_wages_pct_chg <dbl>, oty_taxable_annual_wages_chg
#>   <int>, oty_taxable_annual_wages_pct_chg <dbl>,
#>   oty_annual_contributions_chg <int>, oty_annual_contributions_pct_chg
#>   <dbl>, oty_annual_avg_wkly_wage_chg <int>,
#>   oty_annual_avg_wkly_wage_pct_chg <dbl>, oty_avg_annual_pay_chg <int>,
#>   oty_avg_annual_pay_pct_chg <dbl>.
```

Get Q1-2013 QCEW Data for the Construction Industry
---------------------------------------------------

``` r
qcewAPI::get_industry(year = "2013", qtr = "1", industry = "1012")
#> Source: local data frame [6,451 x 42]
#> 
#>    area_fips own_code industry_code agglvl_code size_code  year   qtr
#>       <fctr>    <int>         <int>       <int>     <int> <int> <int>
#> 1      01000        3          1012          53         0  2013     1
#> 2      01000        5          1012          53         0  2013     1
#> 3      01001        5          1012          73         0  2013     1
#> 4      01003        5          1012          73         0  2013     1
#> 5      01005        5          1012          73         0  2013     1
#> 6      01007        5          1012          73         0  2013     1
#> 7      01009        5          1012          73         0  2013     1
#> 8      01011        5          1012          73         0  2013     1
#> 9      01013        5          1012          73         0  2013     1
#> 10     01015        5          1012          73         0  2013     1
#> ..       ...      ...           ...         ...       ...   ...   ...
#> Variables not shown: disclosure_code <fctr>, qtrly_estabs <int>,
#>   month1_emplvl <int>, month2_emplvl <int>, month3_emplvl <int>,
#>   total_qtrly_wages <dbl>, taxable_qtrly_wages <dbl>, qtrly_contributions
#>   <dbl>, avg_wkly_wage <int>, lq_disclosure_code <fctr>, lq_qtrly_estabs
#>   <dbl>, lq_month1_emplvl <dbl>, lq_month2_emplvl <dbl>, lq_month3_emplvl
#>   <dbl>, lq_total_qtrly_wages <dbl>, lq_taxable_qtrly_wages <dbl>,
#>   lq_qtrly_contributions <dbl>, lq_avg_wkly_wage <dbl>,
#>   oty_disclosure_code <fctr>, oty_qtrly_estabs_chg <int>,
#>   oty_qtrly_estabs_pct_chg <dbl>, oty_month1_emplvl_chg <int>,
#>   oty_month1_emplvl_pct_chg <dbl>, oty_month2_emplvl_chg <int>,
#>   oty_month2_emplvl_pct_chg <dbl>, oty_month3_emplvl_chg <int>,
#>   oty_month3_emplvl_pct_chg <dbl>, oty_total_qtrly_wages_chg <dbl>,
#>   oty_total_qtrly_wages_pct_chg <dbl>, oty_taxable_qtrly_wages_chg <int>,
#>   oty_taxable_qtrly_wages_pct_chg <dbl>, oty_qtrly_contributions_chg
#>   <int>, oty_qtrly_contributions_pct_chg <dbl>, oty_avg_wkly_wage_chg
#>   <int>, oty_avg_wkly_wage_pct_chg <dbl>.
```

Get 2013 QCEW Data for Establishment Size of 100--249
-----------------------------------------------------

``` r
qcewAPI::get_size(year = "2013", size = "6")
#> Source: local data frame [3,781 x 42]
#> 
#>    area_fips own_code industry_code agglvl_code size_code  year   qtr
#>       <fctr>    <int>        <fctr>       <int>     <int> <int> <int>
#> 1      US000        5            10          21         6  2013     1
#> 2      US000        5           101          22         6  2013     1
#> 3      US000        5          1011          23         6  2013     1
#> 4      US000        5          1012          23         6  2013     1
#> 5      US000        5          1013          23         6  2013     1
#> 6      US000        5           102          22         6  2013     1
#> 7      US000        5          1021          23         6  2013     1
#> 8      US000        5          1022          23         6  2013     1
#> 9      US000        5          1023          23         6  2013     1
#> 10     US000        5          1024          23         6  2013     1
#> ..       ...      ...           ...         ...       ...   ...   ...
#> Variables not shown: disclosure_code <fctr>, qtrly_estabs <int>,
#>   month1_emplvl <int>, month2_emplvl <int>, month3_emplvl <int>,
#>   total_qtrly_wages <dbl>, taxable_qtrly_wages <dbl>, qtrly_contributions
#>   <dbl>, avg_wkly_wage <int>, lq_disclosure_codes <fctr>, lq_qtrly_estabs
#>   <dbl>, lq_month1_emplvl <dbl>, lq_month2_emplvl <dbl>, lq_month3_emplvl
#>   <dbl>, lq_total_qtrly_wages <dbl>, lq_taxable_qtrly_wages <dbl>,
#>   lq_qtrly_contributions <dbl>, lq_avg_wkly_wage <dbl>,
#>   oty_disclosure_code <fctr>, oty_qtrly_estabs_chg <int>,
#>   oty_qtrly_estabs_pct_chg <dbl>, oty_month1_emplvl_chg <int>,
#>   oty_month1_emplvl_pct_chg <dbl>, oty_month2_emplvl_chg <int>,
#>   oty_month2_emplvl_pct_chg <dbl>, oty_month3_emplvl_chg <int>,
#>   oty_month3_emplvl_pct_chg <dbl>, oty_total_qtrly_wages_chg <dbl>,
#>   oty_total_qtrly_wages_pct_chg <dbl>, oty_taxable_qtrly_wages_chg <dbl>,
#>   oty_taxable_qtrly_wages_pct_chg <dbl>, oty_qtrly_contributions_chg
#>   <int>, oty_qtrly_contributions_pct_chg <dbl>, oty_avg_wkly_wage_chg
#>   <int>, oty_avg_wkly_wage_pct_chg <dbl>.
```

Related Documentation
=====================

Browse QCEW
-----------

-   [QCEW News Releases](http://www.bls.gov/cew/news.htm)
-   [QCEW Databases](http://www.bls.gov/cew/data.htm)
-   [QCEW Publications](http://www.bls.gov/cew/publications.htm)
-   [QCEW FAQs](http://www.bls.gov/cew/cewfaq.htm)
-   [QCEW Related Links](http://www.bls.gov/cew/home.htm#related)

Data Access and File Layouts
----------------------------

-   [All QCEW data files](http://www.bls.gov/cew/datatoc.htm)
-   [QCEW Data Guide](http://www.bls.gov/cew/dataguide.htm)
-   [Open Data Access Guide](http://www.bls.gov/cew/opendata.htm)
-   [Documentation Guide](http://www.bls.gov/cew/doctoc.htm)
    -   Codes and Titles for NAICS coded data
        -   [QCEW Aggregation Level Codes](http://www.bls.gov/cew/doc/titles/agglevel/agglevel_titles.htm)
        -   [QCEW Area Titles](http://www.bls.gov/cew/doc/titles/area/area_titles.htm)
        -   [QCEW Area Titles (for the pre-2013 area changes)](http://www.bls.gov/cew/doc/titles/area/old_area_titles.htm)
        -   [QCEW MSA Area Titles for some pre-2004 areas (primarily for SIC coded data)](http://www.bls.gov/cew/doc/titles/area/pre_2004_msa_codes.htm)
        -   [QCEW Datatype Codes and Titles](http://www.bls.gov/cew/doc/titles/datatype/datatype_titles.htm)
        -   [QCEW Industry Codes and Titles](http://www.bls.gov/cew/doc/titles/industry/industry_titles.htm)
        -   [QCEW Industry Codes and for high level industries](http://www.bls.gov/cew/doc/titles/industry/high_level_industries.htm)
        -   [QCEW Ownership Codes and Titles](http://www.bls.gov/cew/doc/titles/ownership/ownership_titles.htm)
        -   [QCEW Size Codes and Titles](QCEW%20Size%20Codes%20and%20Titles)
    -   SIC-based Codes and Titles
        -   [QCEW Aggregation Level Codes for SIC coded data](http://www.bls.gov/cew/doc/titles/agglevel/sic_agglevel_titles.htm)
        -   [QCEW MSA Area Titles for some pre-2004 areas (primarily for SIC coded data)](http://www.bls.gov/cew/doc/titles/area/pre_2004_msa_codes.htm)
        -   [QCEW Area Titles for SIC coded data](http://www.bls.gov/cew/doc/titles/area/sic_area_titles.htm)
        -   [QCEW Datatype Codes for SIC coded data](http://www.bls.gov/cew/doc/titles/datatype/sic_datatype_titles.htm)
        -   [QCEW Industry Codes and Titles for SIC coded data](http://www.bls.gov/cew/doc/titles/industry/sic_industry_titles.htm)
        -   [QCEW Ownership Codes and Titles for SIC coded data](http://www.bls.gov/cew/doc/titles/ownership/sic_ownership_titles.htm)
        -   [QCEW Size Codes and Titles for SIC coded data](http://www.bls.gov/cew/doc/titles/size/sic_size_titles.htm)
    -   File Layouts: Excel Files
        -   [Layout for QCEW High Level County Files](http://www.bls.gov/cew/doc/layouts/cty_high_level_layout.htm)
    -   File Layouts: CSV Files
        -   [Layout for QCEW CSV files of annual data](http://www.bls.gov/cew/doc/layouts/csv_annual_layout.htm)
        -   [Layout for QCEW CSV files of quarterly data](http://www.bls.gov/cew/doc/layouts/csv_quarterly_layout.htm)
        -   [Layout for QCEW CSV files of SIC coded annual data](http://www.bls.gov/cew/doc/layouts/sic_csv_annual_layout.htm)
        -   [Layout for QCEW CSV files of SIC coded quarterly data](http://www.bls.gov/cew/doc/layouts/sic_csv_quarterly_layout.htm)
    -   File Layouts: Legacy Flat-Files
        -   [Layout for QCEW .enb and .end formatted files](http://www.bls.gov/cew/doc/layouts/enb_end_layout.htm)
        -   [Layout for QCEW .ewb (SIC) formatted files](http://www.bls.gov/cew/doc/layouts/sic_ewb_layout.htm)
