Feature: Detect

  In order to build and deploy an application
  As the bin/detect script of the buildpack
  I want to determine if the source tree is buildable

  Scenario: no *.cabal file
    When I run `detect ../features/fixtures/invaliddir`
    Then the output should contain "nada"
    And the exit status should be 1

  Scenario: a *.cabal file
    When I run `detect ../features/fixtures/validdir`
    Then the output should contain "GHC/Cabal"
    And the exit status should be 0
