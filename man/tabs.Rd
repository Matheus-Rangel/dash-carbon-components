% Auto-generated: do not edit by hand
\name{tabs}

\alias{tabs}

\title{Tabs component}

\description{
Tabs
}

\usage{
tabs(children=NULL, ariaLabel=NULL, className=NULL, hidden=NULL,
role=NULL, onClick=NULL, onKeyDown=NULL, triggerHref=NULL,
selected=NULL, iconDescription=NULL,
tabContentClassName=NULL, id=NULL, headerOffsets=NULL,
headerSizes=NULL, value=NULL)
}

\arguments{
\item{children}{List of a list of or a singular dash component, string or numbers | a list of or a singular dash component, string or number. Pass in a collection of <Tab> children to be rendered depending on the
currently selected tab}

\item{ariaLabel}{Character. Specify the text to be read by screen-readers when visiting the <Tabs>
component}

\item{className}{Character. Provide a className that is applied to the root <nav> component for the
<Tabs>}

\item{hidden}{Logical. Specify whether the Tab content is hidden}

\item{role}{Character. By default, this value is "navigation". You can also provide an alternate
role if it makes sense from the accessibility-side}

\item{onClick}{Optionally provide an `onClick` handler that is invoked when a <Tab> is
clicked}

\item{onKeyDown}{Optionally provide an `onKeyDown` handler that is invoked when keyed
navigation is triggered}

\item{triggerHref}{Character. Provide a string that represents the `href` for the triggered <Tab>}

\item{selected}{Numeric. Optionally provide an index for the currently selected <Tab>}

\item{iconDescription}{Character. Provide a description that is read out when a user visits the caret icon
for the dropdown menu of items}

\item{tabContentClassName}{Character. Provide a className that is applied to the <TabContent> components}

\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{headerOffsets}{List of characters. Number of columns of left offset the header will have}

\item{headerSizes}{List of characters. Number of columns the header will have}

\item{value}{Character. Value of the selected tab}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

