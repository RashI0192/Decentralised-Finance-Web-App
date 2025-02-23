document.addEventListener('DOMContentLoaded', () => {

  const startButton = document.querySelector('.action-button');
  const appContainer = document.querySelector('.app-container');

  const startApp = () => {
      appContainer.innerHTML = `
          <h2>Welcome to your ValutX Dashboard</h2>
          <p>You can now:</p>
          <ul>
              <li>Top-up your balance</li>
              <li>Withdraw funds securely</li>
              <li>Check your transaction history</li>
              <li>Manage interest rates (admin only)</li>
          </ul>
          <button class="action-button">Go to Dashboard</button>
      `;

      const dashboardButton = document.querySelector('.action-button');
      dashboardButton.addEventListener('click', () => {
          window.location.href = '/dashboard'; 
      });
  };

  startButton.addEventListener('click', startApp);
});

// control +c to end