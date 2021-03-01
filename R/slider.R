# AUTO GENERATED FILE - DO NOT EDIT

slider <- function(id=NULL, name=NULL, inputType=NULL, ariaLabelInput=NULL, labelText=NULL, disabled=NULL, light=NULL, hideTextInput=NULL, value=NULL, min=NULL, max=NULL, step=NULL, stepMultiplier=NULL) {
    
    props <- list(id=id, name=name, inputType=inputType, ariaLabelInput=ariaLabelInput, labelText=labelText, disabled=disabled, light=light, hideTextInput=hideTextInput, value=value, min=min, max=max, step=step, stepMultiplier=stepMultiplier)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Slider',
        namespace = 'dash_carbon_components',
        propNames = c('id', 'name', 'inputType', 'ariaLabelInput', 'labelText', 'disabled', 'light', 'hideTextInput', 'value', 'min', 'max', 'step', 'stepMultiplier'),
        package = 'dashCarbonComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
