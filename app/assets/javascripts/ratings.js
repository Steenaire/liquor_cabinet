function ratingStarHover(element,starNum) {
    if (starNum == 1) {
        element.parentElement.parentElement.getElementsByClassName("rating-info")[0].innerHTML = "I hated it";
        var elements = element.parentElement.parentElement.getElementsByClassName("1");
        elements[0].style.color = "#ED1C3B";
        var elements = element.parentElement.parentElement.getElementsByClassName("2");
        elements[0].style.color = "#CCCCCC";
        var elements = element.parentElement.parentElement.getElementsByClassName("3");
        elements[0].style.color = "#CCCCCC";
        var elements = element.parentElement.parentElement.getElementsByClassName("4");
        elements[0].style.color = "#CCCCCC";
        var elements = element.parentElement.parentElement.getElementsByClassName("5");
        elements[0].style.color = "#CCCCCC";
    } else if (starNum == 2) {
        element.parentElement.parentElement.getElementsByClassName("rating-info")[0].innerHTML = "It was so-so";
        var elements = element.parentElement.parentElement.getElementsByClassName("1");
        elements[0].style.color = "#ED1C3B";
        var elements = element.parentElement.parentElement.getElementsByClassName("2");
        elements[0].style.color = "#ED1C3B";
        var elements = element.parentElement.parentElement.getElementsByClassName("3");
        elements[0].style.color = "#CCCCCC";
        var elements = element.parentElement.parentElement.getElementsByClassName("4");
        elements[0].style.color = "#CCCCCC";
        var elements = element.parentElement.parentElement.getElementsByClassName("5");
        elements[0].style.color = "#CCCCCC";
    } else if (starNum == 3) {
        element.parentElement.parentElement.getElementsByClassName("rating-info")[0].innerHTML = "It was OK";
        var elements = element.parentElement.parentElement.getElementsByClassName("1");
        elements[0].style.color = "#ED1C3B";
        var elements = element.parentElement.parentElement.getElementsByClassName("2");
        elements[0].style.color = "#ED1C3B";
        var elements = element.parentElement.parentElement.getElementsByClassName("3");
        elements[0].style.color = "#ED1C3B";
        var elements = element.parentElement.parentElement.getElementsByClassName("4");
        elements[0].style.color = "#CCCCCC";
        var elements = element.parentElement.parentElement.getElementsByClassName("5");
        elements[0].style.color = "#CCCCCC";
    } else if (starNum == 4) {
        element.parentElement.parentElement.getElementsByClassName("rating-info")[0].innerHTML = "I liked it";
        var elements = element.parentElement.parentElement.getElementsByClassName("1");
        elements[0].style.color = "#ED1C3B";
        var elements = element.parentElement.parentElement.getElementsByClassName("2");
        elements[0].style.color = "#ED1C3B";
        var elements = element.parentElement.parentElement.getElementsByClassName("3");
        elements[0].style.color = "#ED1C3B";
        var elements = element.parentElement.parentElement.getElementsByClassName("4");
        elements[0].style.color = "#ED1C3B";
        var elements = element.parentElement.parentElement.getElementsByClassName("5");
        elements[0].style.color = "#CCCCCC";
    } else if (starNum == 5) {
        element.parentElement.parentElement.getElementsByClassName("rating-info")[0].innerHTML = "I loved it";
        var elements = element.parentElement.parentElement.getElementsByClassName("1");
        elements[0].style.color = "#ED1C3B";
        var elements = element.parentElement.parentElement.getElementsByClassName("2");
        elements[0].style.color = "#ED1C3B";
        var elements = element.parentElement.parentElement.getElementsByClassName("3");
        elements[0].style.color = "#ED1C3B";
        var elements = element.parentElement.parentElement.getElementsByClassName("4");
        elements[0].style.color = "#ED1C3B";
        var elements = element.parentElement.parentElement.getElementsByClassName("5");
        elements[0].style.color = "#ED1C3B";
    }
}

function ratingStarRate(element,score) {
    
    // $.ajax({
    //   type: 'POST',
    //   beforeSend: $.rails.CSRFProtection,
    //   url: "/ratings",
    //   data: { score: score, user_id: userId, recipe_id: recipeId },
    //   dataType: json
    // });

    // $.post( "/ratings", { score: score, user_id: userId, recipe_id: recipeId } );;

    if (score == 1) {
        element.parentElement.parentElement.innerHTML = "<span style='color: #FFCC00;'><p>Thank you for rating!</p><i class='fa fa-star' ></i> </span><span style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span><span style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span><span style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span><span style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span>";
    } else if (score == 2) {
        element.parentElement.parentElement.innerHTML = "<span style='color: #FFCC00;'><p>Thank you for rating!</p><i class='fa fa-star' ></i> </span><span style='color: #FFCC00;'><i class='fa fa-star' ></i> </span><span style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span><span style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span><span style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span>";
    } else if (score == 3) {
        element.parentElement.parentElement.innerHTML = "<span style='color: #FFCC00;'><p>Thank you for rating!</p><i class='fa fa-star' ></i> </span><span style='color: #FFCC00;'><i class='fa fa-star' ></i> </span><span style='color: #FFCC00;'><i class='fa fa-star' ></i> </span><span style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span><span style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span>";
    } else if (score == 4) {
        element.parentElement.parentElement.innerHTML = "<span style='color: #FFCC00;'><p>Thank you for rating!</p><i class='fa fa-star' ></i> </span><span style='color: #FFCC00;'><i class='fa fa-star' ></i> </span><span style='color: #FFCC00;'><i class='fa fa-star' ></i> </span><span style='color: #FFCC00;'><i class='fa fa-star' ></i> </span><span style='color: #CCCCCC;'><i class='fa fa-star' ></i> </span>";
    } else if (score == 5) {
        element.parentElement.parentElement.innerHTML = "<span style='color: #FFCC00;'><p>Thank you for rating!</p><i class='fa fa-star' ></i> </span><span style='color: #FFCC00;'><i class='fa fa-star' ></i> </span><span style='color: #FFCC00;'><i class='fa fa-star' ></i> </span><span style='color: #FFCC00;'><i class='fa fa-star' ></i> </span><span style='color: #FFCC00;'><i class='fa fa-star' ></i> </span>";
    }
}

function reRateDrink() {
    
}