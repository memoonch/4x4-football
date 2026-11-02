const menu = document.createElement('nav');
menu.id = 'main-menu-actions';
menu.hidden = true;
menu.setAttribute('aria-label', 'Main menu');
menu.innerHTML = `<button class="menu-primary" data-action="play"><span>NEW GAME</span></button><button class="menu-secondary" data-action="more"><span>PLAY MORE<br>DRIVING GAMES</span></button>`;
document.querySelector('#game').append(menu);
menu.addEventListener('click', event => {
  const button = event.target.closest('button');
  if (!button) return;
  try {
    document.querySelector('ruffle-player').ruffle().callExternalInterface('soccerMainMenuAction', button.dataset.action);
  } catch (error) { console.error('Main menu action failed', error); }
});
window.soccerMainMenu = {
  visibility(visible) { menu.hidden = !visible; return true; }
};
