/******/ (() => { // webpackBootstrap
/*!***************************************!*\
  !*** ./src/hello_assets/src/index.js ***!
  \***************************************/
document.addEventListener('DOMContentLoaded', () => {

  // Get references to the DOM elements
  const startButton = document.querySelector('.action-button');
  const appContainer = document.querySelector('.app-container');

  // Simulate the application starting and display options
  const startApp = () => {
      // Change app content to show further user options
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

      // Add click event for new button
      const dashboardButton = document.querySelector('.action-button');
      dashboardButton.addEventListener('click', () => {
          // This can link to your actual dashboard or call further functions
          window.location.href = '/dashboard'; // Update with your actual link or functionality
      });
  };

  // Attach the click event to the start button
  startButton.addEventListener('click', startApp);
});

// control +c to end
/******/ })()
;
//# sourceMappingURL=index.js.map