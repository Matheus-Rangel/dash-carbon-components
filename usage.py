import dash_carbon_components as dca
import dash
from dash.dependencies import Input, Output
import dash_html_components as html

app = dash.Dash(__name__)

app.layout = html.Div(children=[
    dca.UIShell(
        name="Dashboard",
        children=[
            dca.UIPage(name='Inputs', children=[
                dca.Grid(children=[
                    dca.Row(children=[
                        dca.Column(columnSizes=['lg-13'], offsetSizes=['lg-3'], children=[
                            dca.Slider(
                                id='slider',
                                labelText='Demo',
                                max=100,
                                min=0,
                                step=1,
                                value=50)
                        ])
                    ])
                ])
            ]),
        ]
    )
])


if __name__ == '__main__':
    app.run_server(debug=True)
