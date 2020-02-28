var activecat = document.querySelectorAll('.category-choice');

activecat.forEach((category) => {
  category.addEventListener('click', (event) => {
    event.currentTarget.classList.toggle('active');
  });
});

