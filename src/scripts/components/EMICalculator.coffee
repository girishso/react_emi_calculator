`/** @jsx React.DOM */`

EMIForm = require("./EMIForm.coffee")

EMICalculator = React.createClass
  render: ->
    `(
    <div className="mainbar">
          <h3 id="home">EMI Calculator</h3>
          <div className="row">
            <div className="col-md-8 col-sm-8">
              <div className="is">
                <EMIForm />
                <div className="well">
                  <div className="row">
                    <div className="col-md-6 col-sm-6">
                      <div className="sect">
                        <h4>Monthly Payment</h4>
                        <h3>₹ 11,8989</h3>
                      </div>
                      <div className="sect">
                        <h4>Total Interest Payable</h4>
                        <h3>₹ 11,8989</h3>
                      </div>
                      <div className="sect">
                        <h4>Total Payment (Principal + Interest)</h4>
                        <h3>₹ 11,8989</h3>
                      </div>
                    </div>
                    <div className="col-md-6 col-sm-6">
                      <div className="sect">
                        <h4>Break-up of Total Payment</h4>
                        <img src="http://placehold.it/200x200"/>
                        <div className="sect">
                          <h4>Principal Interest</h4>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

            </div>
          </div>

          <div className="row">
            <div className="col-md-12 col-sm-12">
              <div className="cwell">
                <h3>Amortization Schedule</h3>
                <table className="table table-striped table-hover">
                  <tbody><tr>
                    <th>Year</th>
                    <th>Principal (A)</th>
                    <th>Interest (B)</th>
                    <th>Total (A + B)</th>
                    <th>Balance</th>
                    <th>Loan Paid Till Date</th>
                  </tr>
                  <tr>
                    <td>2014</td>
                    <td>₹ 10,000</td>
                    <td>₹ 10,000</td>
                    <td>₹ 10,000</td>
                    <td>₹ 10,000</td>
                    <td>0.2%</td>
                  </tr>
                  <tr>
                    <td>2014</td>
                    <td>₹ 10,000</td>
                    <td>₹ 10,000</td>
                    <td>₹ 10,000</td>
                    <td>₹ 10,000</td>
                    <td>0.2%</td>
                  </tr>

                </tbody></table>

              </div>
            </div>
          </div>
        </div>

    )`

module.exports = EMICalculator
