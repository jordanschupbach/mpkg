#' Greet the World
#'
#' This function prints a greeting. If no argument is provided,
#' it defaults to "world".
#'
#' @param world A character string representing the entity to greet.
#'              Defaults to "world".
#' @return No value is returned, but it prints a greeting message.
#' @examples
#' hello("Alice") # Prints "Hello, Alice!"
#' hello() # Prints "Hello, world!"
#' @export
hello <- function(world) {
  if (missing(world)) {
    world <- "world"
  }
  print(paste0("Hello, ", world, "!"))
}
