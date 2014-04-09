`/** @jsx React.DOM */`

EMIForm = require("./EMIForm.coffee")
Summary = require("./Summary.coffee")
Amortization = require("./Amortization.coffee")
EMI = require "../EMI.coffee"

EMICalculator = React.createClass
  render: ->
    emi = @props.emi

    `(
    <div className="mainbar">
          <h3 id="home">EMI Calculator</h3>
          <div className="row">
            <div className="col-md-8 col-sm-8">
              <div className="is">
                <EMIForm />
                <Summary summary={emi.summary()} />
              </div>

            </div>
          </div>

          <div className="row">
            <Amortization amortization_schedule={emi.amortization_schedule()} />
          </div>
        </div>

    )`

module.exports = EMICalculator
