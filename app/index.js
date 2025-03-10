const express = require("express");

const app = express();
const PORT = 80;  // Set port to 80

// Basic route
app.get("/", (req, res) => {
  res.send("Hello, World! This is a simple Node.js app.");
});

// Start the server
app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
