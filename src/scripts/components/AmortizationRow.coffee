`/** @jsx React.DOM */`

AmortizationRow = React.createClass
  render: ->
    data = @props.data
    `(
       <tr>
        <td>{ data.month }</td>
        <td>₹  { data.principal.round().format_rupees() }</td>
        <td>₹  { data.interest.round().format_rupees() }</td>
        <td>₹  { (data.principal + data.interest).round().format_rupees() }</td>
        <td>₹  { data.balance.round().format_rupees() }</td>
        <td>{ data.loan_paid.round(2).format_rupees() }%</td>
      </tr>
    )`

module.exports = AmortizationRow

