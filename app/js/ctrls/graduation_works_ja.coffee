gradWorksJaCtrl = ($scope, PageManager)->
  # titleを変更する処理
  $scope.title = 'Guraduation Works - REMU.BIZ'
  PageManager.setTitle($scope.title)
