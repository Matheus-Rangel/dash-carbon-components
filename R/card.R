# AUTO GENERATED FILE - DO NOT EDIT

card <- function(children=NULL, style=NULL, id=NULL, className=NULL, title=NULL, info=NULL, actions=NULL) {
    
    props <- list(children=children, style=style, id=id, className=className, title=title, info=info, actions=actions)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Card',
        namespace = 'dash_carbon_components',
        propNames = c('children', 'style', 'id', 'className', 'title', 'info', 'actions'),
        package = 'dashCarbonComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
