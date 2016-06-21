
<!-- README.md is generated from README.Rmd. Please edit that file -->
About
=====

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
