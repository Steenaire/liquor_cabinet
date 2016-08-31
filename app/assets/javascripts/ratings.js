function ratingStarHover(element,starNum,userId,recipeId) {
    console.log("<span onClick='ratingStarRate(5,"+userId+","+recipeId+")'");
    if (starNum == 1) {
        element.parentElement.innerHTML = "<span onClick='ratingStarRate(1,"+userId+","+recipeId+")' style='color: #ED1C3B;'><i class='fa fa-star' ></i> </span><span onmouseover='ratingStarHover(this,2"+userId+","+recipeId+")' style='color: #CCCCCC;''><i class='fa fa-star' ></i> </span><span onmouseover='ratingStarHover(this,3"+userId+","+recipeId+")' style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span><span onmouseover='ratingStarHover(this,4"+userId+","+recipeId+")' style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span><span onmouseover='ratingStarHover(this,5"+userId+","+recipeId+")' style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span>";
    } else if (starNum == 2) { //Need to make the others like the first
        element.parentElement.innerHTML = "<span onmouseover='ratingStarHover(this,1)' style='color: #ED1C3B;'><i class='fa fa-star' ></i> </span><span onClick='ratingStarRate(2,"+userId+","+recipeId+")' style='color: #ED1C3B;''><i class='fa fa-star' ></i> </span><span onmouseover='ratingStarHover(this,3)' style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span><span onmouseover='ratingStarHover(this,4)' style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span><span onmouseover='ratingStarHover(this,5)' style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span>";
    } else if (starNum == 3) {
        element.parentElement.innerHTML = "<span onmouseover='ratingStarHover(this,1)' style='color: #ED1C3B;'><i class='fa fa-star' ></i> </span><span onmouseover='ratingStarHover(this,2)' style='color: #ED1C3B;''><i class='fa fa-star' ></i> </span><span onClick='ratingStarRate(3,"+userId+","+recipeId+")' style='color: #ED1C3B;'><i class='fa fa-star' ></i> </span><span onmouseover='ratingStarHover(this,4)' style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span><span onmouseover='ratingStarHover(this,5)' style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span>";
    } else if (starNum == 4) {
        element.parentElement.innerHTML = "<span onmouseover='ratingStarHover(this,1)' style='color: #ED1C3B;'><i class='fa fa-star' ></i> </span><span onmouseover='ratingStarHover(this,2)' style='color: #ED1C3B;''><i class='fa fa-star' ></i> </span><span onmouseover='ratingStarHover(this,3)' style='color: #ED1C3B;'><i class='fa fa-star' ></i> </span><span onClick='ratingStarRate(4,"+userId+","+recipeId+")' style='color: #ED1C3B;'><i class='fa fa-star' ></i> </span><span onmouseover='ratingStarHover(this,5)' style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span>";
    } else if (starNum == 5) {
        element.parentElement.innerHTML = "<span onmouseover='ratingStarHover(this,1)' style='color: #ED1C3B;'><i class='fa fa-star' ></i> </span><span onmouseover='ratingStarHover(this,2)' style='color: #ED1C3B;''><i class='fa fa-star' ></i> </span><span onmouseover='ratingStarHover(this,3)' style='color: #ED1C3B;'><i class='fa fa-star' ></i> </span><span onmouseover='ratingStarHover(this,4)' style='color: #ED1C3B;'><i class='fa fa-star' ></i> </span><span onClick='ratingStarRate(5,"+userId+","+recipeId+")' style='color: #ED1C3B;'><i class='fa fa-star' ></i> </span>";
    }
}

function ratingStarRate(score,userId,recipeId) {
    console.log("You rated it ");
    $.post( "/ratings", { score: score, user_id: userId, recipe_id: recipeId } );
}