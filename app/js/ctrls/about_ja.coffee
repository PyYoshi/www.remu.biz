aboutJaCtrl = ($scope, PageManager)->
  # titleを変更する処理
  $scope.title = 'About me (Japanese) - REMU.BIZ'
  PageManager.setTitle($scope.title)
