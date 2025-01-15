#' Perform all steps to reload the package
#' @importFrom pkgbuild compile_dll
#' @importFrom devtools document install
#' @details
#' The function performs the following steps:
#' 1. Compiles the stan code, if changed
#' 2. Updates the documentation
#' 3. Installs the package
#' See this [GitHub gist](https://gist.github.com/jamesmbaazam/6587ac77f1e37ed7373bced0cba3931d) for more details. #nolint
#' @returns NULL
#' @export
#'
#' @examples
#' \dontrun{
#'   reload_package()
#' }
reload_package <- function() {
    pkgbuild::compile_dll()
    devtools::document()
    devtools::install(quick = FALSE)
}
