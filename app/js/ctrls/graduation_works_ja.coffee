gradWorksJaCtrl = ($scope, PageManager)->
  # titleを変更する処理
  $scope.title = 'Graduation Works - REMU.BIZ'
  PageManager.setTitle($scope.title)
