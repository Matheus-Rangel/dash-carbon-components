
import PropTypes from 'prop-types';

import React, {Component} from 'react';

import {isNil} from 'ramda';

/*
 * event polyfill for IE
 * https://developer.mozilla.org/en-US/docs/Web/API/CustomEvent/CustomEvent
 */
function CustomEvent(event, params) {
    // eslint-disable-next-line no-param-reassign
    params = params || {
        bubbles: false,
        cancelable: false,
        // eslint-disable-next-line no-undefined
        detail: undefined,
    };
    const evt = document.createEvent('CustomEvent');
    evt.initCustomEvent(
        event,
        params.bubbles,
        params.cancelable,
        params.detail
    );
    return evt;
}
CustomEvent.prototype = window.Event.prototype;

export default function updateLocation(e, href) {
    const hasModifiers = e.metaKey || e.shiftKey || e.altKey || e.ctrlKey;
    if (hasModifiers) {
        return;
    }
    // prevent anchor from updating location
    e.preventDefault();
    window.history.pushState({}, '', href);
    window.dispatchEvent(new CustomEvent('_dashprivate_pushstate'));
    // scroll back to top
    window.scrollTo(0, 0);
}
