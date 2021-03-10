# AUTO GENERATED FILE - DO NOT EDIT

radioButtonGroup <- function(legendText=NULL, name=NULL, radiosButtons=NULL, id=NULL, value=NULL, labelPosition=NULL, orientation=NULL, disabled=NULL) {
    
    props <- list(legendText=legendText, name=name, radiosButtons=radiosButtons, id=id, value=value, labelPosition=labelPosition, orientation=orientation, disabled=disabled)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'RadioButtonGroup',
        namespace = 'dash_carbon_components',
        propNames = c('legendText', 'name', 'radiosButtons', 'id', 'value', 'labelPosition', 'orientation', 'disabled'),
        package = 'dashCarbonComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
