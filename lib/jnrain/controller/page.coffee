define [
  'angular'

  'jnrain/ui/page'
], (angular) ->
  'use strict'

  mod = angular.module 'jnrain/controller/page', [
    'jnrain/ui/page'
  ]

  # 页面标题
  mod.controller 'PageTitle',
    ($scope, $state, $log, PageGlobals) ->
      $log = $log.getInstance 'PageTitle'

      $scope.dynTitlePrefix = ''
      $scope.stateTitle = ''
      $scope.$state = $state

      $scope.$on '$stateChangeSuccess',
        (evt, toState, toParams, fromState, fromParams) ->
          newTitle = toState.data?.title
          if !newTitle?
            newTitle = ''

          $log.info 'State changed: newTitle = ', newTitle
          $scope.stateTitle = newTitle

      $scope.$on 'ui:pageTitleFragChanged', (evt) ->
        $scope.dynTitlePrefix = PageGlobals.getTitlePrefix()

      $log.debug '$scope = ', $scope


# vim:set ai et ts=2 sw=2 sts=2 fenc=utf-8:
