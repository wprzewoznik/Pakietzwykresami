#' Title Funkcja wiz_emisji()
#'
#' @param dane data_frame
#'
#' @return column chart
#' @export
#'
#' @examples
#' wiz_emisji()
wiz_emisji <- function(dane = podsum)
{
  nowy %>%
    group_by(Segment) %>%
    summarise(emis = sum(Emisja)) -> tmp

    ggplot(tmp, aes(Segment, emis)) +
    geom_col() -> wykres

  return(wykres)
}
