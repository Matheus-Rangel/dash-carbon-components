import React from 'react'
import PropTypes from 'prop-types'
import './Card.scss'
import {Tooltip} from 'carbon-components-react';
/**
 * Card
 */
const Card = ({children, title, style, className, info}) => {
    return (
        <div className={'card'}>
            {title &&
            <>
                <div className={'card-header'}>
                    <div className={'card-title'}>
                        {title}
                    </div>
                    {info &&
                        <Tooltip iconDescription={`Card ${title} Info`}>
                            <p>{info}</p>
                        </Tooltip>
                    }
                </div>
                <div className={'card-divider'}/>
            </>
            }

            <div style={style} className={'card-body ' + className}>
                {children}
            </div>
        </div>
    )
}
Card.propTypes = {
    /**
     * The inline styles
     */
    style: PropTypes.object,
    /**
     * The ID of this component, used to identify dash components
     * in callbacks. The ID needs to be unique across all of the
     * components in an app.
     */
    id: PropTypes.string,
    /**
     The children of the element
     */
    children: PropTypes.oneOfType([
        PropTypes.arrayOf(PropTypes.node),
        PropTypes.node
    ]),
    /**
     * The class of the element
     */
    className: PropTypes.string,
    /**
     * Title of the card
     */
    title: PropTypes.string,
    /**
     * Additional information about the content of this card.
     */
    info: PropTypes.string,
}
Card.defaultProps = {
    className: ''
}
export default Card;
