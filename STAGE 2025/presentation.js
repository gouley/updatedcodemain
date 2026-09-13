// Carousel functionality for presentation.html

document.addEventListener('DOMContentLoaded', function () {
  const slides = document.querySelectorAll('.slides img');
  const slidesContainer = document.querySelector('.slides');
  const prevBtn = document.querySelector('.carousel-btn.prev');
  const nextBtn = document.querySelector('.carousel-btn.next');
  const dotsContainer = document.querySelector('.dots');
  let currentIndex = 0;
  const totalSlides = slides.length;

  // Create dots
  function createDots() {
    dotsContainer.innerHTML = '';
    for (let i = 0; i < totalSlides; i++) {
      const dot = document.createElement('span');
      dot.classList.add('dot');
      if (i === 0) dot.classList.add('active');
      dot.addEventListener('click', () => goToSlide(i));
      dotsContainer.appendChild(dot);
    }
  }

  function updateDots() {
    const dots = dotsContainer.querySelectorAll('.dot');
    dots.forEach(dot => dot.classList.remove('active'));
    if (dots[currentIndex]) dots[currentIndex].classList.add('active');
  }

  function goToSlide(index) {
    currentIndex = (index + totalSlides) % totalSlides;
    slidesContainer.style.transform = `translateX(-${currentIndex * 100}%)`;
    updateDots();
  }

  function nextSlide() {
    goToSlide(currentIndex + 1);
  }

  function prevSlide() {
    goToSlide(currentIndex - 1);
  }

  nextBtn.addEventListener('click', nextSlide);
  prevBtn.addEventListener('click', prevSlide);

  // Initialize
  createDots();
  goToSlide(0);
});
