const express = require('express');
const fs = require('fs');
const bodyParser = require('body-parser');

const app = express();
const DATA_PATH = './data.json';

app.use(bodyParser.json());

// GET all students
app.get('/students', (req, res) => {
  fs.readFile(DATA_PATH, 'utf8', (err, data) => {
    if (err) return res.status(500).send('Error reading data');
    res.json(JSON.parse(data));
  });
});

app.get('/students/:id', (req, res) => {
    fs.readFile(DATA_PATH, 'utf8', (err, data) => {
      if (err) return res.status(500).send('Error reading data');
  
      const students = JSON.parse(data);
      const student = students[req.params.id];
  
      if (!student) {
        return res.status(404).send('Student not found');
      }
  
      res.json(student);
    });
  });

// POST a new student
app.post('/students', (req, res) => {
  fs.readFile(DATA_PATH, 'utf8', (err, data) => {
    if (err) return res.status(500).send('Error reading data');

    const students = JSON.parse(data);
    const newId = Date.now(); // unique numeric ID
    const newStudent = {
      id: newId,
      ...req.body
    };

    students[newId] = newStudent;

    fs.writeFile(DATA_PATH, JSON.stringify(students, null, 2), err => {
      if (err) return res.status(500).send('Error saving data');
      res.status(201).json(newStudent);
    });
  });
});

app.listen(3000, () => console.log('Server running on port 3000'));
