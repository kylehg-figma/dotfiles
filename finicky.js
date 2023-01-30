module.exports = {
  defaultBrowser: "Google Chrome",
  handlers: [
    {
      match: [
        /aws\.amazon\.com/,
        /amazonaws\.com/,
        /mode\.com/,
        /modeanalytics\.com/,
        /admin\.figma\.com/,
        /deploys\.figma\.com/,
        /sentry\.io/,
        /app\.datadoghq\.com/,
      ],
      browser: "Google Chrome",
    },
  ],
  options: {
    // Hide the finicky icon from the top bar. Default: false
    hideIcon: true,
  },
};
