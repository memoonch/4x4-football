export const drivingGamesUrl = 'https://www.freeonlinegames.com/?utm_source=games&utm_medium=4x4Football';

// Handle all themed More buttons before their legacy Flash action handlers.
document.querySelector('#game').addEventListener('click', event => {
  const button = event.target.closest('button[data-action="more"],button.team-more');
  if (!button || button.disabled) return;
  event.preventDefault();
  event.stopImmediatePropagation();
  window.open(drivingGamesUrl, '_blank', 'noopener,noreferrer');
}, true);
