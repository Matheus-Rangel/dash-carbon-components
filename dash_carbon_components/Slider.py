# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class Slider(Component):
    """A Slider component.
Slider

Keyword arguments:
- id (string; optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- name (string; optional): Form item name
- inputType (string; default 'number'): The form element type
- ariaLabelInput (string; default ''): The ARIA label for the <input>
- labelText (string; required): Label text
- disabled (boolean; default False): Disabled
- light (boolean; default False): Light variant
- hideTextInput (boolean; default False): Without text input
- value (number; required): The value
- min (number; required): The minimum value
- max (number; required): The maximum value
- step (number; required): The step
- stepMultiplier (number; default 5): The step factor for Shift+arrow keys"""
    @_explicitize_args
    def __init__(self, id=Component.UNDEFINED, name=Component.UNDEFINED, inputType=Component.UNDEFINED, ariaLabelInput=Component.UNDEFINED, labelText=Component.REQUIRED, disabled=Component.UNDEFINED, light=Component.UNDEFINED, hideTextInput=Component.UNDEFINED, value=Component.REQUIRED, min=Component.REQUIRED, max=Component.REQUIRED, step=Component.REQUIRED, stepMultiplier=Component.UNDEFINED, **kwargs):
        self._prop_names = ['id', 'name', 'inputType', 'ariaLabelInput', 'labelText', 'disabled', 'light', 'hideTextInput', 'value', 'min', 'max', 'step', 'stepMultiplier']
        self._type = 'Slider'
        self._namespace = 'dash_carbon_components'
        self._valid_wildcard_attributes =            []
        self.available_properties = ['id', 'name', 'inputType', 'ariaLabelInput', 'labelText', 'disabled', 'light', 'hideTextInput', 'value', 'min', 'max', 'step', 'stepMultiplier']
        self.available_wildcard_properties =            []

        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs
        args = {k: _locals[k] for k in _explicit_args if k != 'children'}

        for k in ['labelText', 'value', 'min', 'max', 'step']:
            if k not in args:
                raise TypeError(
                    'Required argument `' + k + '` was not specified.')
        super(Slider, self).__init__(**args)
