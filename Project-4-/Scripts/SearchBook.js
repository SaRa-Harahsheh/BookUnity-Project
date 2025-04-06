function startSliding() {

   
    let slider = document.querySelector(".slider");
    let position = 0;
    let speed = 60; 
    let minSpeed = 1; 
    let deceleration = 1; 

    let interval = setInterval(() => {
        position -= speed; 
        slider.style.transform = `translateX(${position}px)`;

        if (speed > minSpeed) {
            speed -= deceleration;
        } else {
            clearInterval(interval); 
        }
    }, 50);
}


/////////////////////////////

//document.addEventListener("DOMContentLoaded", function () {
//    //const btnSend = document.getElementById("btnSend");
//    var buttons = document.querySelectorAll(".borrowBtn");
//    const popup = document.getElementById("borrowPopup");
//    const closeBtn = document.querySelector(".close-btn");
//    const confirmBtn = document.querySelector(".confirm-btn");
//    const cancelBtn = document.querySelector(".cancel-btn");
//    const borrowDate = document.getElementById("borrowDate");
//    const borrowTime = document.getElementById("borrowTime");

//    buttons.forEach(function (btn) {
//        btn.addEventListener("click", function (event) {
//            event.preventDefault();

//            popup.style.display = "flex";

//            var bookId = btn.getAttribute("commandargument");

//            var url = new URL(window.location.href);
//            url.searchParams.set("borrowedBook", bookId);
//            window.history.pushState({}, "", url);

//            document.getElementById("<%= hiddenBookID.ClientID %>").value = bookId;
//        });
//    });

//    closeBtn.addEventListener("click", function () {
//        popup.style.display = "none";
//    });

//    cancelBtn.addEventListener("click", function () {
//        popup.style.display = "none";
//    });

//    confirmBtn.addEventListener("click", function () {
//        if (borrowDate.value && borrowTime.value) {
//            //alert(`Borrowing scheduled on ${borrowDate.value} at ${borrowTime.value}`);
//            popup.style.display = "none"; 
//        //    alert("Please select both date and time!");
//        }
//    });

//    window.addEventListener("click", function (event) {
//        if (event.target === popup) {
//            popup.style.display = "none";
//        }
//    });
//});



