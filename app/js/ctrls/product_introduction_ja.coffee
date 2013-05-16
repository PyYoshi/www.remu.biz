productIntroJaCtrl = ($scope, PageManager)->
  # titleを変更する処理
  $scope.title = 'Product Introduction - REMU.BIZ'
  PageManager.setTitle($scope.title)