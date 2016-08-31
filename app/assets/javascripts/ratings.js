function ratingStarHover(element,starNum,userId,recipeId) {
    console.log("<span onClick='ratingStarRate(5,"+userId+","+recipeId+")'");
    if (starNum == 1) {
        element.parentElement.innerHTML = "<span onClick='ratingStarRate(this,1,"+userId+","+recipeId+")' style='color: #ED1C3B;'><i class='fa fa-star' ></i> </span><span onmouseover='ratingStarHover(this,2"+","+userId+","+recipeId+")' style='color: #CCCCCC;''><i class='fa fa-star' ></i> </span><span onmouseover='ratingStarHover(this,3"+","+userId+","+recipeId+")' style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span><span onmouseover='ratingStarHover(this,4"+","+userId+","+recipeId+")' style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span><span onmouseover='ratingStarHover(this,5"+","+userId+","+recipeId+")' style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span>";
    } else if (starNum == 2) {
        element.parentElement.innerHTML = "<span onmouseover='ratingStarHover(this,1"+","+userId+","+recipeId+")' style='color: #ED1C3B;'><i class='fa fa-star' ></i> </span><span onClick='ratingStarRate(this,2,"+userId+","+recipeId+")' style='color: #ED1C3B;''><i class='fa fa-star' ></i> </span><span onmouseover='ratingStarHover(this,3"+","+userId+","+recipeId+")' style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span><span onmouseover='ratingStarHover(this,4"+","+userId+","+recipeId+")' style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span><span onmouseover='ratingStarHover(this,5"+","+userId+","+recipeId+")' style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span>";
    } else if (starNum == 3) {
        element.parentElement.innerHTML = "<span onmouseover='ratingStarHover(this,1"+","+userId+","+recipeId+")' style='color: #ED1C3B;'><i class='fa fa-star' ></i> </span><span onmouseover='ratingStarHover(this,2"+","+userId+","+recipeId+")' style='color: #ED1C3B;''><i class='fa fa-star' ></i> </span><span onClick='ratingStarRate(this,3,"+userId+","+recipeId+")' style='color: #ED1C3B;'><i class='fa fa-star' ></i> </span><span onmouseover='ratingStarHover(this,4"+","+userId+","+recipeId+")' style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span><span onmouseover='ratingStarHover(this,5"+","+userId+","+recipeId+")' style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span>";
    } else if (starNum == 4) {
        element.parentElement.innerHTML = "<span onmouseover='ratingStarHover(this,1"+","+userId+","+recipeId+")' style='color: #ED1C3B;'><i class='fa fa-star' ></i> </span><span onmouseover='ratingStarHover(this,2"+","+userId+","+recipeId+")' style='color: #ED1C3B;''><i class='fa fa-star' ></i> </span><span onmouseover='ratingStarHover(this,3"+","+userId+","+recipeId+")' style='color: #ED1C3B;'><i class='fa fa-star' ></i> </span><span onClick='ratingStarRate(this,4,"+userId+","+recipeId+")' style='color: #ED1C3B;'><i class='fa fa-star' ></i> </span><span onmouseover='ratingStarHover(this,5"+","+userId+","+recipeId+")' style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span>";
    } else if (starNum == 5) {
        element.parentElement.innerHTML = "<span onmouseover='ratingStarHover(this,1"+","+userId+","+recipeId+")' style='color: #ED1C3B;'><i class='fa fa-star' ></i> </span><span onmouseover='ratingStarHover(this,2"+","+userId+","+recipeId+")' style='color: #ED1C3B;''><i class='fa fa-star' ></i> </span><span onmouseover='ratingStarHover(this,3"+","+userId+","+recipeId+")' style='color: #ED1C3B;'><i class='fa fa-star' ></i> </span><span onmouseover='ratingStarHover(this,4"+","+userId+","+recipeId+")' style='color: #ED1C3B;'><i class='fa fa-star' ></i> </span><span onClick='ratingStarRate(this,5,"+userId+","+recipeId+")' style='color: #ED1C3B;'><i class='fa fa-star' ></i> </span>";
    }
}

function ratingStarRate(element,score,userId,recipeId) {
    console.log("You rated it"+score+","+userId+","+recipeId);
    $.post( "/ratings", { score: score, user_id: userId, recipe_id: recipeId } );

    if (score == 1) {
        element.parentElement.innerHTML = "<span style='color: #FFCC00;'><i class='fa fa-star' ></i> </span><span style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span><span style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span><span style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span><span style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span>";
    } else if (score == 2) {
        element.parentElement.innerHTML = "<span style='color: #FFCC00;'><i class='fa fa-star' ></i> </span><span style='color: #FFCC00;'><i class='fa fa-star' ></i> </span><span style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span><span style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span><span style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span>";
    } else if (score == 3) {
        element.parentElement.innerHTML = "<span style='color: #FFCC00;'><i class='fa fa-star' ></i> </span><span style='color: #FFCC00;'><i class='fa fa-star' ></i> </span><span style='color: #FFCC00;'><i class='fa fa-star' ></i> </span><span style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span><span style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span>";
    } else if (score == 4) {
        element.parentElement.innerHTML = "<span style='color: #FFCC00;'><i class='fa fa-star' ></i> </span><span style='color: #FFCC00;'><i class='fa fa-star' ></i> </span><span style='color: #FFCC00;'><i class='fa fa-star' ></i> </span><span style='color: #FFCC00;'><i class='fa fa-star' ></i> </span><span style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span>";
    } else if (score == 5) {
        element.parentElement.innerHTML = "<span style='color: #FFCC00;'><i class='fa fa-star' ></i> </span><span style='color: #FFCC00;'><i class='fa fa-star' ></i> </span><span style='color: #FFCC00;'><i class='fa fa-star' ></i> </span><span style='color: #FFCC00;'><i class='fa fa-star' ></i> </span><span style='color: #FFCC00;'><i class='fa fa-star' ></i> </span>";
    }
}