module.exports = {
  defaultBrowser: "Arc",
  handlers: [
    {
      match: [
        /amazonaws\.com/,
        /mode\.com/,
        /modeanalytics\.com/,
        /admin\.figma\.com/,
        /deploys\.figma\.com/,
        /sentry\.com/,
      ],
      browser: "Google Chrome",
    },
  ],
};
