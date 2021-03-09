
module DashCarbonComponents
using Dash

const resources_path = realpath(joinpath( @__DIR__, "..", "deps"))
const version = "0.0.1"

include("card.jl")
include("column.jl")
include("datepicker.jl")
include("datepickerrange.jl")
include("grid.jl")
include("multiselect.jl")
include("multiselectfilterable.jl")
include("numberinput.jl")
include("row.jl")
include("slider.jl")
include("tab.jl")
include("tabs.jl")
include("uishell.jl")

function __init__()
    DashBase.register_package(
        DashBase.ResourcePkg(
            "dash_carbon_components",
            resources_path,
            version = version,
            [
                DashBase.Resource(
    relative_package_path = "dash_carbon_components.min.js",
    external_url = nothing,
    dynamic = nothing,
    async = nothing,
    type = :js
),
DashBase.Resource(
    relative_package_path = "dash_carbon_components.min.js.map",
    external_url = nothing,
    dynamic = true,
    async = nothing,
    type = :js
)
            ]
        )

    )
end
end
