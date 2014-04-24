define ['angular', 'jnrain/controller/index'], (angular, controllers) ->
  boot: () ->
    mod = angular.module 'jnrain/main', ['ui.select2']
    controllers.registerWith mod

    angular.bootstrap angular.element('#appmount'), [
      'jnrain/main'
      'jnrain/api/univ'
      'jnrain/api/account'
      'jnrain/api/ident'
      'jnrain/api/session'
      'jnrain/ui/toasts'

      'btford.socket-io'
      'ui.bootstrap'
    ]


# vim:set ai et ts=2 sw=2 sts=2 fenc=utf-8:
