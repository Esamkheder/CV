document.addEventListener("DOMContentLoaded", function () {
    const navLinks = document.querySelectorAll("nav ul li a");
    const checkbox = document.getElementById("check");
  
    navLinks.forEach(link => {
      link.addEventListener("click", () => {
        checkbox.checked = false; // Uncheck the checkbox to close the menu
      });
    });
  });