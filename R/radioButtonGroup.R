# AUTO GENERATED FILE - DO NOT EDIT

radioButtonGroup <- function(legendText=NULL, name=NULL, radiosButtons=NULL, id=NULL, value=NULL, labelPosition=NULL, orientation=NULL, disabled=NULL, className=NULL) {
    
    props <- list(legendText=legendText, name=name, radiosButtons=radiosButtons, id=id, value=value, labelPosition=labelPosition, orientation=orientation, disabled=disabled, className=className)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'RadioButtonGroup',
        namespace = 'dash_carbon_components',
        propNames = c('legendText', 'name', 'radiosButtons', 'id', 'value', 'labelPosition', 'orientation', 'disabled', 'className'),
        package = 'dashCarbonComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
