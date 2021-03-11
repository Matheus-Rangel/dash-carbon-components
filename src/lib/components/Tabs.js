/**
 * Copyright IBM Corp. 2016, 2020
 *
 * This source code is licensed under the Apache-2.0 license found in the
 * LICENSE file in the root directory of this source tree.
 */

import PropTypes from 'prop-types';
import React from 'react';
import classNames from 'classnames';
import ChevronDownGlyph from '@carbon/icons-react/lib/chevron--down/index';
import {settings} from 'carbon-components';
import {getProps} from "../internal/childrenOperations";
import TabItem from "../internal/TabItem";

const {prefix} = settings;

/**
 * Tabs
 */
class Tabs extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            dropdownHidden: true
        }
    }

    getTabs() {
        return React.Children.map(this.props.children, tab => tab) || [];
    }

    getTabAt(value) {
        return this.getTabs().find(tab => getProps(tab).value === value);
    };

    // following functions (*) are Props on Tab.js, see Tab.js for parameters
    handleTabClick() {
        return (index, label, evt) => {
            evt.preventDefault();
            this.selectTabAt(index);
            this.setState({
                dropdownHidden: true,
            });
        };
    };

    handleTabKeyDown() {
        return (index, label, evt) => {
            const key = evt.key || evt.which;

            if (key === 'Enter' || key === 13 || key === ' ' || key === 32) {
                this.selectTabAt(index);
                this.setState({
                    dropdownHidden: true,
                });
            }
        };
    };

    handleTabAnchorFocus() {
        return index => {
            const tabCount = React.Children.count(this.props.children) - 1;
            let tabIndex = index;

            if (index < 0) {
                tabIndex = tabCount;
            } else if (index > tabCount) {
                tabIndex = 0;
            }

            const tab = this.getTabAt(tabIndex);

            if (tab) {
                this.selectTabAt(tabIndex);
                if (tab.tabAnchor) {
                    tab.tabAnchor.focus();
                }
            }
        };
    };

    handleDropdownClick() {
        this.setState({
            dropdownHidden: !this.state.dropdownHidden,
        });
    };

    selectTabAt(index) {
        if (this.state.selected !== index) {
            this.props.setProps({value: getProps(this.getTabs()[index]).value});
        }
    };

    render() {
        const {
            ariaLabel,
            iconDescription,
            className,
            triggerHref,
            role,
            headerOffsets,
            headerSizes,
            value,
            setProps,
            ...other
        } = this.props;

        /**
         * The tab panel acts like a tab panel when the screen is wider, but acts
         * like a select list when the screen is narrow.  In the wide case we want
         * to allow the user to use the tab key to set the focus in the tab panel
         * and then use the left and right arrow keys to navigate the tabs.  In the
         * narrow case we want to use the tab key to select different options in
         * the list.
         *
         * We set the tab index based on the different states so the browser will treat
         * the whole tab panel as a single focus component when it looks like a tab
         * panel and separate components when it looks like a select list.
         */
        const tabsWithProps = this.getTabs().map((tab, index) => {
            const tabPanelIndex = index === this.state.selected ? 0 : -1;
            const tabIndex = !this.state.dropdownHidden ? 0 : tabPanelIndex;
            const tabProps = getProps(tab)
            return <TabItem
                index={index}
                key={index}
                selected={value ? tabProps.value === value : index === 0}
                handleTabClick={this.handleTabClick()}
                handleTabAnchorFocus={this.handleTabAnchorFocus()}
                tabIndex={tabIndex}
                handleTabKeyDown={this.handleTabKeyDown()}
                className={tabProps.className}
                disabled={tabProps.disabled}
                label={tabProps.label}
                role={tabProps.role}
                value={tabProps.value}
            />
        });
        const selectedTab = this.getTabAt(value) || this.getTabs()[0];
        const classes = {
            tabs: classNames(`${prefix}--tabs`, className),
            tablist: classNames(`${prefix}--tabs__nav`, {
                [`${prefix}--tabs__nav--hidden`]: this.state.dropdownHidden,
            }),
        };
        const selectedLabel = selectedTab ? selectedTab.props.label : '';
        return (
            <>
                <div {...other} className={classes.tabs} role={role}>
                    <div
                        role="listbox"
                        aria-label={ariaLabel}
                        tabIndex={0}
                        className={`${prefix}--tabs-trigger`}
                        onClick={this.handleDropdownClick}
                        onKeyPress={this.handleDropdownClick}>
                        <a
                            tabIndex={-1}
                            className={`${prefix}--tabs-trigger-text`}
                            href={triggerHref}
                            onClick={this.handleDropdownClick}>
                            {selectedLabel}
                        </a>
                        <ChevronDownGlyph>
                            {iconDescription && <title>{iconDescription}</title>}
                        </ChevronDownGlyph>
                    </div>
                    <ul role="tablist" className={classes.tablist}>
                        {tabsWithProps}
                    </ul>
                </div>
                {selectedTab}
            </>
        );
    }
}

Tabs.propTypes = {
    /**
     * Specify the text to be read by screen-readers when visiting the <Tabs>
     * component
     */
    ariaLabel: PropTypes.string,

    style: PropTypes.object,
    /**
     * Pass in a collection of <Tab> children to be rendered depending on the
     * currently selected tab
     */
    children: PropTypes.oneOfType([
        PropTypes.arrayOf(PropTypes.node),
        PropTypes.node
    ]),
    /**
     * Provide a className that is applied to the root <nav> component for the
     * <Tabs>
     */
    className: PropTypes.string,

    /**
     * Specify whether the Tab content is hidden
     */
    hidden: PropTypes.bool,

    /**
     * By default, this value is "navigation". You can also provide an alternate
     * role if it makes sense from the accessibility-side
     */
    role: PropTypes.string,

    /**
     * Optionally provide an `onClick` handler that is invoked when a <Tab> is
     * clicked
     */
    onClick: PropTypes.func,

    /**
     * Optionally provide an `onKeyDown` handler that is invoked when keyed
     * navigation is triggered
     */
    onKeyDown: PropTypes.func,

    /**
     * Provide a string that represents the `href` for the triggered <Tab>
     */
    triggerHref: PropTypes.string,

    /**
     * Optionally provide an index for the currently selected <Tab>
     */
    selected: PropTypes.number,

    /**
     * Provide a description that is read out when a user visits the caret icon
     * for the dropdown menu of items
     */
    iconDescription: PropTypes.string,

    /**
     * Provide a className that is applied to the <TabContent> components
     */
    tabContentClassName: PropTypes.string,

    /**
     * The ID of this component, used to identify dash components
     * in callbacks. The ID needs to be unique across all of the
     * components in an app.
     */
    id: PropTypes.string,

    /**
     * Number of columns of left offset the header will have
     */
    headerOffsets: PropTypes.arrayOf(PropTypes.string),

    /**
     * Number of columns the header will have
     */
    headerSizes: PropTypes.arrayOf(PropTypes.string),

    /**
     * Value of the selected tab
     */
    value: PropTypes.string,

    /** Prop passed by Dash */
    setProps: PropTypes.func,
};

Tabs.defaultProps = {
    iconDescription: 'show menu options',
    role: 'navigation',
    triggerHref: '#',
    ariaLabel: 'listbox',
};

export default Tabs;
