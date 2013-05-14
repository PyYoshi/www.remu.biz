topCtrl = ($scope, PageManager)->
  # titleを変更する処理
  $scope.title = 'REMU.BIZ'
  PageManager.setTitle($scope.title)
