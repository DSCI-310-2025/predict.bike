#' Clean Bike Data
#'
#' This function cleans the raw bike-sharing dataset by removing
#' unnecessary columns, renaming the ID column, and converting 
#' selected columns to the correct data types.
#'
#' @param data A data frame or tibble containing raw bike data.
#'
#' @return A cleaned data frame or tibble with:
#'   - `instant` and `dteday` columns removed
#'   - `weathersit` converted to a factor
#'   - `cnt` converted to numeric
#'   - `X` column renamed to `id`
#'
#' @export
#'
#' @importFrom dplyr
#' 
#' @examples
#' data <- data.frame(X = 1:2, instant = 1:2, dteday = c("2021-01-01", "2021-01-02"),
#'                      weathersit = c(1, 2), cnt = c("100", "200"))
#' clean_bike_data(data)

clean_bike_data <- function(data) {
  X <- cnt <- dteday <- instant <- predict <- weathersit <- NULL
  data |>
    dplyr::select(-instant, -dteday) |>
    dplyr::mutate(
      weathersit = as.factor(weathersit),
      cnt = as.numeric(cnt)) |>
    dplyr::rename(id = X)
}
