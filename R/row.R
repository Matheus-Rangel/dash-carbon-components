# AUTO GENERATED FILE - DO NOT EDIT

row <- function(children=NULL) {
    
    props <- list(children=children)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Row',
        namespace = 'dash_carbon_components',
        propNames = c('children'),
        package = 'dashCarbonComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
