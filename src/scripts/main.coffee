`/** @jsx React.DOM */`

# Bring in jQuery and React as a Bower component in the global namespace
require("script!react/react-with-addons.js")
require("script!jquery/jquery.js")

StarterApp = require("./components/EMICalculator.coffee")
EMI = require("./EMI.coffee")

emi = new EMI(2500000, 10.5, 240)
m = emi.summary()
console.log m
sc = emi.amortization_schedule()
console.log sc



React.renderComponent(`<StarterApp />`, document.getElementById('emi'))

