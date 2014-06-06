`/** @jsx React.DOM */`

PieChart = require "../helpers/pie_chart.js"

Chart = React.createClass
  render: ->
    total_interest = @props.total_interest
    total_payment = @props.total_payment
    principal = total_payment - total_interest
    int_pct = (100 * total_interest / total_payment).round() + " %"
    princ_pct = (100 * principal / total_payment).round() + " %"

    pie = PieChart.pieChart([total_interest, principal], 200, 200, 100, 100, 70, ["#ED8C2B", "#88A825"], ["Interest " + int_pct, "Principal " + princ_pct], 10, 190)
    chart_html = $(pie).html() #.prop('outerHTML')
    `(
      <div className="sect">
        <h4>Break-up of Total Payment</h4>
        <svg dangerouslySetInnerHTML={{__html: chart_html}} />
      </div>
    )`

module.exports = Chart
