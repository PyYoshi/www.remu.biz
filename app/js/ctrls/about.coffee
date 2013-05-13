aboutCtrl = ($scope, PageManager)->
  # titleを変更する処理
  $scope.title = 'About me'
  PageManager.setTitle($scope.title)
