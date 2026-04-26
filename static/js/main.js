/**
 * The Tech Lens — main.js
 * Handles animated tech icons (all pages) and floating particles (home/list).
 */

(function () {
  'use strict';

  const TECH_SYMBOLS = [
    '</>','⚡','⚙️','🚀','🗄️','🔌','🌐','⭐',
    '💻','🔗','📊','🧠','🔐','⚛️','📱',
    '🎯','🔍','🛠️','📡','🎨','💡','📈',
    '🌀','⏱️','🔄'
  ];

  // ── Tech Icons ──────────────────────────────────────────────
  const iconContainer = document.getElementById('techIcons');
  if (iconContainer) {
    TECH_SYMBOLS.forEach(function (symbol, index) {
      const icon = document.createElement('div');
      icon.className = 'tech-icon icon-' + (index + 1);
      icon.textContent = symbol;
      icon.style.left = (Math.random() * 80 + 10) + '%';
      icon.style.top  = (Math.random() * 80 + 10) + '%';
      iconContainer.appendChild(icon);
    });
  }

  // ── Floating Particles (home / list pages only) ──────────────
  const particleContainer = document.getElementById('particles');
  if (particleContainer) {
    const PARTICLE_COUNT = 100;

    // Inject a single dynamic @keyframes rule with random travel distance
    const floatStyle = document.createElement('style');
    const dy = Math.floor(Math.random() * 100 + 50);
    const dx = Math.floor(Math.random() * 50 - 25);
    floatStyle.textContent =
      '@keyframes particleFloat {' +
        '0%,100% { transform: translateY(0) translateX(0); opacity: 0.5; }' +
        '50% { transform: translateY(-' + dy + 'px) translateX(' + dx + 'px); opacity: 0.1; }' +
      '}';
    document.head.appendChild(floatStyle);

    for (let i = 0; i < PARTICLE_COUNT; i++) {
      const particle = document.createElement('div');
      particle.className = 'particle';

      const size     = (Math.random() * 4 + 2).toFixed(1);
      const x        = (Math.random() * 100).toFixed(2);
      const y        = (Math.random() * 100).toFixed(2);
      const duration = (Math.random() * 20 + 10).toFixed(1);
      const delay    = (Math.random() * 5).toFixed(2);

      particle.style.cssText =
        'width:' + size + 'px;' +
        'height:' + size + 'px;' +
        'left:' + x + '%;' +
        'top:' + y + '%;' +
        'animation:particleFloat ' + duration + 's ease-in-out ' + delay + 's infinite;';

      particleContainer.appendChild(particle);
    }
  }
}());
