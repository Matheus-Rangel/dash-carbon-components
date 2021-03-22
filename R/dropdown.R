# AUTO GENERATED FILE - DO NOT EDIT

dropdown <- function(disabled=NULL, options=NULL, id=NULL, inline=NULL, invalid=NULL, invalidText=NULL, label=NULL, translateWithId=NULL, ariaLabel=NULL, value=NULL, light=NULL, titleText=NULL, helperText=NULL, style=NULL) {
    
    props <- list(disabled=disabled, options=options, id=id, inline=inline, invalid=invalid, invalidText=invalidText, label=label, translateWithId=translateWithId, ariaLabel=ariaLabel, value=value, light=light, titleText=titleText, helperText=helperText, style=style)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Dropdown',
        namespace = 'dash_carbon_components',
        propNames = c('disabled', 'options', 'id', 'inline', 'invalid', 'invalidText', 'label', 'translateWithId', 'ariaLabel', 'value', 'light', 'titleText', 'helperText', 'style'),
        package = 'dashCarbonComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
