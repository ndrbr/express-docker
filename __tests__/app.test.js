const request = require("supertest");
const app = require("../app");

describe("Test Express app routes", () => {
  test('GET / should return "Hello, World!!!"', async () => {
    const response = await request(app).get("/");
    expect(response.status).toBe(200);
    expect(response.text).toBe("Hello, World!");
  });
});
