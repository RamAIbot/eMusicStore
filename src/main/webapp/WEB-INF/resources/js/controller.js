var cartApp=angular.module("cartApp",[]);
cartApp.controller("cartCtrl",function($scope,$http){
    $scope.refreshCart=function(){
        $http.get('/eMusicStore_war_exploded/rest/cart/'+$scope.cartId).success(function (data){
           $scope.cart=data;
        });
    };

    $scope.clearCart=function(){
        $http.delete('/eMusicStore_war_exploded/rest/cart/'+$scope.cartId).success($scope.refreshCart());
    };

    $scope.initCartId=function(cartId){
        $scope.cartId=cartId;
        $scope.refreshCart();
    };

    $scope.addToCart=function(productId)
    {
        $http.put('/eMusicStore_war_exploded/rest/cart/add/'+productId).success(function (){

           alert('Product successfully added to cart!')
        });
    };

    $scope.removeFromCart=function(productId){
        $http.put('/eMusicStore_war_exploded/rest/cart/remove/'+productId).success(function(){
            $scope.refreshCart();
        });

    };

    $scope.calGrandTotal=function()
    {
        var grandTotal=0;
        for(var i=0;i<$scope.cart.cartItems.length;i++)
        {
            grandTotal+=$scope.cart.cartItems[i].totalPrice;
        }

        return grandTotal;
    }
});
