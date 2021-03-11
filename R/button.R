# AUTO GENERATED FILE - DO NOT EDIT

button <- function(children=NULL, id=NULL, style=NULL, className=NULL, disabled=NULL, kind=NULL, size=NULL, n_clicks=NULL) {
    
    props <- list(children=children, id=id, style=style, className=className, disabled=disabled, kind=kind, size=size, n_clicks=n_clicks)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Button',
        namespace = 'dash_carbon_components',
        propNames = c('children', 'id', 'style', 'className', 'disabled', 'kind', 'size', 'n_clicks'),
        package = 'dashCarbonComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
