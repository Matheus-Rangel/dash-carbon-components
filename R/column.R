# AUTO GENERATED FILE - DO NOT EDIT

column <- function(children=NULL, columnSizes=NULL, offsetSizes=NULL) {
    
    props <- list(children=children, columnSizes=columnSizes, offsetSizes=offsetSizes)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Column',
        namespace = 'dash_carbon_components',
        propNames = c('children', 'columnSizes', 'offsetSizes'),
        package = 'dashCarbonComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
