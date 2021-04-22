% Auto-generated: do not edit by hand
\name{link}

\alias{link}

\title{Link component}

\description{
Link component
}

\usage{
link(children=NULL, id=NULL, style=NULL, className=NULL,
disabled=NULL, inline=NULL, size=NULL, n_clicks=NULL,
visited=NULL, href=NULL)
}

\arguments{
\item{children}{List of a list of or a singular dash component, string or numbers | a list of or a singular dash component, string or number. Provide the content for the Link}

\item{id}{Character. The id of the link}

\item{style}{Named list. Inline styles}

\item{className}{Character. Provide a custom className to be applied to the containing `<a>` node}

\item{disabled}{Logical. Specify if the control should be disabled, or not}

\item{inline}{Logical. Specify whether you want the inline version of this control}

\item{size}{A value equal to: 'sm', 'md', 'lg'. Specify the size of the Link. Currently supports either `sm`, 'md' (default) or 'lg` as an option.}

\item{n_clicks}{Numeric. Number of times this link has been clicked}

\item{visited}{Logical. Specify whether you want the link to receive visited styles after the link has been clicked}

\item{href}{Character. Provide the `href` attribute for the `<a>` node}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

