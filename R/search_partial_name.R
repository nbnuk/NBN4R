#' Partial-name search
#' 
#' A partial-name search for species names & identifiers used at the NBN. If searching for a taxon name, and the scientific name or common name of the taxon are known, use \code{\link{search_names}} instead.
#' 
#' @references Associated NBN web service: \url{https://api.nbnatlas.org/#ws25}
#' @seealso \code{\link{search_names}} for searching known scientific or common taxonomic names
#' @param taxon string: part of the scientific, common name of the taxa
#' @param geo_only logical: if TRUE, only results that have geospatial occurrence records will be included
#' @param output_format string: controls the print method for the returned object. Either "complete" (the complete data structure is displayed), or "simple" (a simplified version is displayed). Note that the complete data structure exists in both cases: this option only controls what is displayed when the object is printed to the console. The default output format is "simple"
#' @param index_type string: the index type to limit. Values include: TAXON REGION COLLECTION INSTITUTION DATASET. By default, no index_type limit is applied
#' @param limit numeric: the maximum number of matches returned (defaults to the server-side value - currently 10)
#' @return A dataframe of results. The contents (column names) of the data frame will vary depending on the details of the search and the results.
#' @examples
#' \dontrun{
#' # find any names containing "allaba"
#' search_partial_name("aba",output_format="simple")
#' 
#' # retrieve only species that have geolocated occurrence records
#' search_partial_name("Abac",geo_only=TRUE)
#' }
#' @export
search_partial_name <- function(taxon, geo_only = FALSE, output_format = "simple",
                                index_type, limit) {
  
  ALA4R::search_partial_name(taxon, geo_only, output_format,
                             index_type, limit)
  
}