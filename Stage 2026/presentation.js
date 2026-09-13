document.addEventListener('DOMContentLoaded', function() {
  const slides = document.querySelectorAll('.slides img');
  const slidesContainer = document.querySelector('.slides');
  const prevBtn = document.querySelector('.carousel-btn.prev');
  const nextBtn = document.querySelector('.carousel-btn.next');
  const dotsContainer = document.querySelector('.dots');
  let currentIndex = 0;
  const totalSlides = slides.length;

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

  nextBtn.addEventListener('click', () => goToSlide(currentIndex + 1));
  prevBtn.addEventListener('click', () => goToSlide(currentIndex - 1));

  createDots();
  goToSlide(0);
});
