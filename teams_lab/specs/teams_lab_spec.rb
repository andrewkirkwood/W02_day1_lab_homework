require('minitest/autorun')
require('minitest/reporters')
require_relative('../teams_lab')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
