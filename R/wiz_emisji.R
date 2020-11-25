#' Title Funkcja wiz_emisji()
#'
#' @param dane data_frame
#'
#' @return column chart
#' @export
#'
#' @examples
#' wiz_emisji()
wiz_emisji <- function(dane = out)
{
    nowy %>%
      group_by(Segment) %>%
      summarise(emis = sum(Emisja)) %>%
      ggplot(., aes(Segment, emis)) +
      geom_col() -> wykres

  #a = rnorm(100)
  #wykres=hist(a)
  return(wykres)
}

