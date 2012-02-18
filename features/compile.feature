Feature: Compile

  In order to build and deploy an application
  As the bin/compile script of the buildpack
  I want to download and bootstrap the environment

  Scenario: BUILDPACK_GHC_BASE_URL not set
    Given environment variable BUILDPACK_GHC_BASE_URL is set to ""
    When I run `compile ../tmp/build ../tmp/cache`
    Then the output should contain "Error: please set BUILDPACK_GHC_BASE_URL"
    And  the exit status should be 1

  Scenario: BUILDPACK_GHC_BASE_URL is set
    Given environment variable BUILDPACK_GHC_BASE_URL is set to "http://www.haskell.org/ghc/dist"
    When  I run `compile ../tmp/build ../tmp/cache`
    Then  the output should not contain "Error: please set BUILDPACK_GHC_BASE_URL"
    And   the exit status should be 0

  Scenario: GHC_BOOTSTRAP_VERSION is not set
    Given environment variable GHC_BOOTSTRAP_VERSION is set to ""
    Given environment variable BUILDPACK_GHC_BASE_URL is set to "http://www.haskell.org/ghc/dist"
    When  I run `compile ../tmp/build ../tmp/cache`
    Then  the output should contain "Error: please set GHC_BOOTSTRAP_VERSION"
    And   the exit status should be 1

  Scenario: GHC_BOOTSTRAP_VERSION is set
    Given environment variable GHC_BOOTSTRAP_VERSION is set to "7.0.4"
    Given environment variable BUILDPACK_GHC_BASE_URL is set to "http://www.haskell.org/ghc/dist"
    When  I run `compile ../tmp/build ../tmp/cache`
    Then  the output should not contain "Error: please set GHC_BOOTSTRAP_VERSION"
    And   the exit status should be 0
