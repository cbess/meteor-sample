Router.configure
    layoutTemplate: 'masterLayout'
    loadingTemplate: 'loading'
    notFoundTemplate: 'pageNotFound'
    yieldTemplates:
        nav: {to: 'nav'}
        footer: {to: 'footer'}

Router.map ->
    @route 'home',
        path: '/'

    @route 'private'

Router.plugin 'ensureSignedIn',
  only: ['private']
