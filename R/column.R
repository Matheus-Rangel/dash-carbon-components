# AUTO GENERATED FILE - DO NOT EDIT

column <- function(children=NULL, style=NULL, id=NULL, className=NULL, columnSizes=NULL, offsetSizes=NULL) {
    
    props <- list(children=children, style=style, id=id, className=className, columnSizes=columnSizes, offsetSizes=offsetSizes)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Column',
        namespace = 'dash_carbon_components',
        propNames = c('children', 'style', 'id', 'className', 'columnSizes', 'offsetSizes'),
        package = 'dashCarbonComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
