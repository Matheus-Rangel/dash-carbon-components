# AUTO GENERATED FILE - DO NOT EDIT

row <- function(children=NULL, style=NULL, id=NULL, className=NULL) {
    
    props <- list(children=children, style=style, id=id, className=className)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Row',
        namespace = 'dash_carbon_components',
        propNames = c('children', 'style', 'id', 'className'),
        package = 'dashCarbonComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
