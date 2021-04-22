/**
 * Copyright IBM Corp. 2016, 2018
 *
 * This source code is licensed under the Apache-2.0 license found in the
 * LICENSE file in the root directory of this source tree.
 */

import PropTypes from 'prop-types';
import React from 'react';
import TabItem from "../internal/TabItem";

/**
 * Tab component
 */
class Tab extends React.Component {
    render() {
        return (
            <>{this.props.children}</>
        );
    }
}
Tab.propTypes = {
    /**
     * Specify an optional className to be added to your Tab
     */
    className: PropTypes.string,

    /**
     * Whether your Tab is disabled.
     */
    disabled: PropTypes.bool,

    /**
     * Provide the contents of your Tab
     */
    label: PropTypes.string.isRequired,

    /**
     * Provide an accessibility role for your Tab
     */
    role: PropTypes.string,
    /**
     * Value of the tab
     */
    value: PropTypes.string,
    /**
     * Tab content
     */
    children: PropTypes.oneOfType([
        PropTypes.arrayOf(PropTypes.node),
        PropTypes.node
    ]),
};
TabItem.defaultProps = {
    role: 'presentation',
};
export default Tab;
