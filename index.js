import express from "express";

const app = express();

app.use(express.json());

let todos = [];

app.get("/", (req, res) => {
    res.json({ message: "Hello, Docker!" });
});

app.get("/todos", (req, res) => {
    res.json({ todos });
});

app.post("/todos", (req, res) => {
    const { task } = req.body;
    todos.push(task);
    res.json({ message: "Task added!", todos });
});

app.listen(3000, () => console.log("Server running on port 3000"));