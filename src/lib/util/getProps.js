export default function (element) {
    let childProps;
    if (
        // disabled is a defaultProp (so it's always set)
        // meaning that if it's not set on child.props, the actual
        // props we want are lying a bit deeper - which means they
        // are coming from Dash
        !element.props.disabled &&
        element.props._dashprivate_layout &&
        element.props._dashprivate_layout.props
    ) {
        // props are coming from Dash
        childProps = element.props._dashprivate_layout.props;
    } else {
        // else props are coming from React (Demo.react.js, or Tabs.test.js)
        childProps = element.props;
    }
    return childProps
}
