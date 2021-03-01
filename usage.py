import dash_carbon_components
import dash
from dash.dependencies import Input, Output
import dash_html_components as html

app = dash.Dash(__name__)

app.layout = html.Div([
    dash_carbon_components.Slider(
        id='slider',
        labelText='Demo',
        max=100,
        min=0,
        step=1,
        value=50),
    html.Div(id='output')
])


@app.callback(Output('output', 'children'), [Input('slider', 'value')])
def display_output(value):
    return 'You have entered {}'.format(value)


if __name__ == '__main__':
    app.run_server(debug=True)
