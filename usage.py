import dash
import dash_carbon_components as dca
import dash_core_components as dcc
import dash_html_components as html
from dash.dependencies import Output, Input

app = dash.Dash(__name__, suppress_callback_exceptions=True)

nav_layout = html.Div([
    dcc.Location(id='url', refresh=False),
    dca.UIShell(
        id='page-content',
        name='Dashboard',
        pages=[{'name': 'Inputs', 'url': '/'}, {'name': 'Outputs', 'url': '/outputs'}],
    )
])

inputs_layout = dca.Grid(children=[
    dca.Row(children=[
        dca.Column(columnSizes=['lg-4'], offsetSizes=['lg-2'], children=[
            dca.Card(title='Slider', children=[
                dca.Slider(
                    id='slider',
                    labelText='Demo',
                    max=100,
                    min=0,
                    step=1,
                    value=50,
                ),
            ])
        ]),
        dca.Column(columnSizes=['lg-6'], children=[
            dca.Card(title='Slider', children=[
                dca.DatePicker(
                    id='date-picker',
                    datePickerType='range',
                    inputs=[
                        {
                            'placeholder': 'mm/dd/yyyy',
                            'labelText': 'Start Date',
                            'id': 'start-date'
                        },
                        {
                            'placeholder': 'mm/dd/yyyy',
                            'labelText': 'End Date',
                            'id': 'end-date'
                        },
                    ]
                ),
            ])
        ])
    ])
])
outputs_layout = dca.Grid(children=[
    dca.Row(children=[
        dca.Column(columnSizes=['lg-13'], offsetSizes=['lg-3'], children=[
            dca.Slider(
                id='test',
                labelText='Demo',
                max=1000,
                min=0,
                step=1,
                value=100)
        ])
    ])
])

app.layout = html.Div([
    nav_layout
])
app.validation_layout = html.Div([
    nav_layout,
    inputs_layout,
    outputs_layout
])

pages = {
    '/': inputs_layout,
    '/outputs': outputs_layout
}


@app.callback(
    Output('page-content', 'children'),
    Input('url', 'pathname')
)
def display_page(pathname):
    return pages[pathname]


if __name__ == '__main__':
    app.run_server(debug=True)
