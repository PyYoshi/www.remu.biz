aboutCtrl = ($scope, PageManager)->
  # titleを変更する処理
  $scope.title = 'About me - REMU.BIZ'
  PageManager.setTitle($scope.title)
