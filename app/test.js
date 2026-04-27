const app = require("./server");

const http = require("http");

const server = app.listen(0, () => {
  const port = server.address().port;

  http.get(`http://localhost:${port}/health`, (res) => {
    let data = "";
    res.on("data", (chunk) => (data += chunk));
    res.on("end", () => {
      const body = JSON.parse(data);
      const passed = res.statusCode === 200 && body.status === "healthy";
      console.log(passed ? "✅ Health check passed" : "❌ Health check failed");
      server.close();
      process.exit(passed ? 0 : 1);
    });
  });
});
