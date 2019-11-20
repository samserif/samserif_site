// Transparent header script //-------------------
  window.addEventListener('scroll', function () {
    document.body.classList[
      window.scrollY > 60 ? 'add': 'remove'
    ]('js-scrolledDown');
  });

