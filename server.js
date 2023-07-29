const app = require("./app");

const PORT = 3000;

// Start the server if not in a testing environment
if (!process.env.TEST_ENV) {
  app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
  });
}
