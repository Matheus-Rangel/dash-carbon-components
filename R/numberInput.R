# AUTO GENERATED FILE - DO NOT EDIT

numberInput <- function(allowEmpty=NULL, style=NULL, ariaLabel=NULL, className=NULL, defaultValue=NULL, disabled=NULL, helperText=NULL, hideLabel=NULL, iconDescription=NULL, id=NULL, invalid=NULL, invalidText=NULL, label=NULL, light=NULL, max=NULL, min=NULL, readOnly=NULL, size=NULL, step=NULL, value=NULL, warn=NULL, warnText=NULL) {
    
    props <- list(allowEmpty=allowEmpty, style=style, ariaLabel=ariaLabel, className=className, defaultValue=defaultValue, disabled=disabled, helperText=helperText, hideLabel=hideLabel, iconDescription=iconDescription, id=id, invalid=invalid, invalidText=invalidText, label=label, light=light, max=max, min=min, readOnly=readOnly, size=size, step=step, value=value, warn=warn, warnText=warnText)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'NumberInput',
        namespace = 'dash_carbon_components',
        propNames = c('allowEmpty', 'style', 'ariaLabel', 'className', 'defaultValue', 'disabled', 'helperText', 'hideLabel', 'iconDescription', 'id', 'invalid', 'invalidText', 'label', 'light', 'max', 'min', 'readOnly', 'size', 'step', 'value', 'warn', 'warnText'),
        package = 'dashCarbonComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
