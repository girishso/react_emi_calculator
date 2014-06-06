`/** @jsx React.DOM */`
EMI = require "../EMI.coffee"

EMIForm = React.createClass
  handleChange: (e) ->
    emi = new EMI(
      @refs.amount.getDOMNode().value
      @refs.interest.getDOMNode().value
      @refs.tenure.getDOMNode().value)

    React.renderComponent(`<EMICalculator emi={emi} />`, document.getElementById('emi'))

  render: ->
    `(
      <div className="well">
        <h1>Home Loan</h1>
        <div className="form">
          <form className="form-horizontal">
            <div className="form-group">
              <label className="control-label col-md-3" htmlFor="name">Amount (&#8377;)</label>
              <div className="col-md-4">
                <input type="text" className="form-control" onChange={this.handleChange} ref="amount" name="amount" defaultValue="1500000"/>
              </div>
            </div>
            <div className="form-group">
              <label className="control-label col-md-3" htmlFor="interest">Interest Rate (%)</label>
              <div className="col-md-4">
                <input type="text" className="form-control" onChange={this.handleChange} ref="interest" name="interest" defaultValue ="12.75"/>
              </div>
            </div>
            <div className="form-group">
              <label className="control-label col-md-3" htmlFor="tenure">Tenure</label>
              <div className="col-md-3">
                <input type="text" className="form-control" onChange={this.handleChange} ref="tenure" name="tenure" defaultValue="240"/>
                <label className="radio">
                  <input type="radio" value="" name="years"/>
                  <span>Years</span>
                </label>
                <label className="radio">
                  <input type="radio" value="" name="months"/>
                  <span>Months</span>
                </label>
              </div>
            </div>
          </form>
        </div>
      </div>
    )`

module.exports = EMIForm
