`/** @jsx React.DOM */`

EMIForm = require("./EMIForm.coffee")
Summary = require("./Summary.coffee")
Amortization = require("./Amortization.coffee")

EMICalculator = React.createClass
  render: ->
    `(
    <div className="mainbar">
          <h3 id="home">EMI Calculator</h3>
          <div className="row">
            <div className="col-md-8 col-sm-8">
              <div className="is">
                <EMIForm />
                <Summary />
              </div>

            </div>
          </div>

          <div className="row">
            <Amortization />
          </div>
        </div>

    )`

module.exports = EMICalculator
