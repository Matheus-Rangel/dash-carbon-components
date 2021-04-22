# AUTO GENERATED FILE - DO NOT EDIT

link <- function(children=NULL, id=NULL, style=NULL, className=NULL, disabled=NULL, inline=NULL, size=NULL, n_clicks=NULL, visited=NULL, href=NULL) {
    
    props <- list(children=children, id=id, style=style, className=className, disabled=disabled, inline=inline, size=size, n_clicks=n_clicks, visited=visited, href=href)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Link',
        namespace = 'dash_carbon_components',
        propNames = c('children', 'id', 'style', 'className', 'disabled', 'inline', 'size', 'n_clicks', 'visited', 'href'),
        package = 'dashCarbonComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
