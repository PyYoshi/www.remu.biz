topCtrl = ($scope, PageManager)->
  # titleを変更する処理
  $scope.title = 'とっぷぺーじだよ'
  PageManager.setTitle($scope.title)
