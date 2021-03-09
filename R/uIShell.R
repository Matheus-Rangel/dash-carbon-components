# AUTO GENERATED FILE - DO NOT EDIT

uIShell <- function(children=NULL, id=NULL, name=NULL, sidebarItems=NULL, headerItems=NULL, loading_state=NULL) {
    
    props <- list(children=children, id=id, name=name, sidebarItems=sidebarItems, headerItems=headerItems, loading_state=loading_state)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'UIShell',
        namespace = 'dash_carbon_components',
        propNames = c('children', 'id', 'name', 'sidebarItems', 'headerItems', 'loading_state'),
        package = 'dashCarbonComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
