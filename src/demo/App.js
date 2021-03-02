/* eslint no-magic-numbers: 0 */
import React, {Component} from 'react';
import Slider from "../lib/components/Slider";
import '../index.scss'
export default class App extends Component {

    constructor() {
        super();
        this.state = {
            value: ''
        };
        this.setProps = this.setProps.bind(this);
    }

    setProps(newProps) {
        this.setState(newProps);
    }

    render() {
        return (
            <div>
                <Slider
                    setProps={this.setProps}
                    labelText={'Demo'}
                    max={100}
                    min={0}
                    step={1}
                    value={50}
                />
            </div>
        )
    }
}
