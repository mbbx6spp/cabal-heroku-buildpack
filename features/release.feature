Feature: Release

  In order to build and deploy an application
  As the bin/release script of the buildpack
  I want to setup the build environment

  Scenario: default
    When I run `release`
    Then the output should contain "addons:"
    And  the output should contain "config_vars:"
    And  the output should contain "default_process_types:"
    And  the exit status should be 0
