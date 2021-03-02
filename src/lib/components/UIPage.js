import React from 'react';
import PropTypes from 'prop-types';

/**
 * ExampleComponent is an example component.
 * It takes a property, `label`, and
 * displays it.
 * It renders an input with the property `value`
 * which is editable by the user.
 */

const UIPage = ({children}) => <>{children}</>;
UIPage.propTypes = {
    /** Element id */
    id: PropTypes.string,
    /** Page name */
    name: PropTypes.string.isRequired,
    /** Children */
    children: PropTypes.oneOfType([
        PropTypes.arrayOf(PropTypes.node),
        PropTypes.node,
    ]),
    value: PropTypes.string.isRequired,
    /** Prop passed by Dash */
    setProps: PropTypes.func
}
export default UIPage;
