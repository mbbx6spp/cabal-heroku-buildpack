# GHC/Cabal Heroku Buildpack

This is a custom Heroku buildpack for Haskell applications that are built
using GHC and Cabal.

## Status

EXPERIMENTAL

## Version / Dependencies

Based on the current (as of this writing) GHC v7.4.1, Cabal 1.14.0,
and Cabal-install 0.14.0.

The end goal will be to allow some variance of GHC and Platform versions. At
present there are zero plans to actively support GHC 6.x with this
buildpack. If it happens to work, then great, otherwise you are free to fork
this repository to make it work for your needs.

## Usage

Like other buildpacks you will need to specify the buildpack when creating
your Heroku application. Something like the following:

    heroku create --stack cedar --buildpack https://github.com/mbbx6spp/cabal-heroku-buildpack.git
    heroku plugins:install http://github.com/heroku/heroku-labs.git
    heroku labs:enable user_env_compile --app YOUR_APP_NAME

You will also need to specify environment variables after your app is
created. For instance,

    BUILDPACK_GHC_BASE_URL
    GHC_VERSION

These should be your S3 base URL for the GHC bootstrap and Platform
distributions respectively.

More to be said, but I am too tired to write it now.

Check back soon.

## Contributors

* Susan Potter [mbbx6spp on GitHub](https://github.com/mbbx6spp)
