# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class NumberInput(Component):
    """A NumberInput component.
NumberInput component

Keyword arguments:
- allowEmpty (boolean; default False): `true` to allow empty string.
- style (dict; optional): style of the input
- ariaLabel (string; default 'Numeric input field with increment and decrement buttons'): Provide a description that would be used to best describe the use case of the NumberInput component
- className (string; optional): Specify an optional className to be applied to the wrapper node
- defaultValue (number | string; optional): Optional starting value for uncontrolled state
- disabled (boolean; default False): Specify if the control should be disabled, or not
- helperText (string; default ''): Provide text that is used alongside the control label for additional help
- hideLabel (boolean; default False): Specify whether you want the underlying label to be visually hidden
- iconDescription (string; default 'choose a number'): Provide a description for up/down icons that can be read by screen readers
- id (string; required): Specify a custom `id` for the input
- invalid (boolean; default False): Specify if the currently value is invalid.
- invalidText (string; default 'Provide invalidText'): Message which is displayed if the value is invalid.
- label (string; optional): Generic `label` that will be used as the textual representation of what
this field is for
- light (boolean; default False): `true` to use the light version.
- max (number; optional): The maximum value.
- min (number; optional): The minimum value.
- readOnly (boolean; optional): Specify if the component should be read-only
- size (a value equal to: 'sm', 'xl'; optional): Specify the size of the Number Input. Currently supports either `sm` or `xl` as an option.
- step (number; default 1): Specify how much the valus should increase/decrease upon clicking on up/down button
- value (number | string; optional): Specify the value of the input
- warn (boolean; default False): Specify whether the control is currently in warning state
- warnText (string; default ''): Provide the text that is displayed when the control is in warning state"""
    @_explicitize_args
    def __init__(self, allowEmpty=Component.UNDEFINED, style=Component.UNDEFINED, ariaLabel=Component.UNDEFINED, className=Component.UNDEFINED, defaultValue=Component.UNDEFINED, disabled=Component.UNDEFINED, helperText=Component.UNDEFINED, hideLabel=Component.UNDEFINED, iconDescription=Component.UNDEFINED, id=Component.REQUIRED, invalid=Component.UNDEFINED, invalidText=Component.UNDEFINED, label=Component.UNDEFINED, light=Component.UNDEFINED, max=Component.UNDEFINED, min=Component.UNDEFINED, readOnly=Component.UNDEFINED, size=Component.UNDEFINED, step=Component.UNDEFINED, value=Component.UNDEFINED, warn=Component.UNDEFINED, warnText=Component.UNDEFINED, **kwargs):
        self._prop_names = ['allowEmpty', 'style', 'ariaLabel', 'className', 'defaultValue', 'disabled', 'helperText', 'hideLabel', 'iconDescription', 'id', 'invalid', 'invalidText', 'label', 'light', 'max', 'min', 'readOnly', 'size', 'step', 'value', 'warn', 'warnText']
        self._type = 'NumberInput'
        self._namespace = 'dash_carbon_components'
        self._valid_wildcard_attributes =            []
        self.available_properties = ['allowEmpty', 'style', 'ariaLabel', 'className', 'defaultValue', 'disabled', 'helperText', 'hideLabel', 'iconDescription', 'id', 'invalid', 'invalidText', 'label', 'light', 'max', 'min', 'readOnly', 'size', 'step', 'value', 'warn', 'warnText']
        self.available_wildcard_properties =            []

        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs
        args = {k: _locals[k] for k in _explicit_args if k != 'children'}

        for k in ['id']:
            if k not in args:
                raise TypeError(
                    'Required argument `' + k + '` was not specified.')
        super(NumberInput, self).__init__(**args)
