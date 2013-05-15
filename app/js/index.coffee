DEBUG = true

$ ()->
  # メニューを開いた状態でどこかタッチすると閉じるように
  $('body').click(
    ()->
      $(".open").removeClass("open")
  )

############################ AngularJS用 ############################

app = angular.module('index', ['ngResource'])

app.config(
  ($routeProvider, $locationProvider)->
    $locationProvider.html5Mode(false)
    $locationProvider.hashPrefix('!')
    $routeProvider.when(
        '/about'
        {
          templateUrl: '/templates/about.html'
          controller: 'aboutCtrl'
        }
    ).when(
        '/about_ja'
        {
          templateUrl: '/templates/about_ja.html'
          controller: 'aboutJaCtrl'
        }
    ).otherwise(
      {
        redirectTo:'/about'
      }
    )
)

app.directive(
  'indexHeader'
  ()->
    return {
      restrict: 'E'
      templateUrl: '/templates/header.html'
      replace:true
    }
)

# footerのテンプレート読み込み
app.directive(
  'indexFooter'
  ()->
    return {
      restrict: 'E'
      templateUrl: '/templates/footer.html'
      replace:true
    }
)

app.factory(
  'PageManager'
  ()->
    title = 'Japan Total War : ReplayDB'
    return {
      getTitle: ()->
        return title
      setTitle: (newTitle)->
        title = newTitle
        document.title = title
        return title
    }
)

# index.html用ctrl
indexCtrl = ($scope, $location)->
  # 現在のパスを取得する関数
  $scope.getPath = ()->
    return $location.path()
