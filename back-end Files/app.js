const express = require('express');
const bodyParser = require('body-parser');
const mongoose = require('mongoose');
const jwt = require('jsonwebtoken');

const app = express();
const PORT = process.env.PORT || 3002;

mongoose.connect('mongodb://localhost:27017/my_database');

const db = mongoose.connection;
db.on('error', console.error.bind(console, 'MongoDB connection error:'));

// Define user schema
const userSchema = new mongoose.Schema({
  username: String,
  email: String,
  password: String,
});

const User = mongoose.model('User', userSchema);

// Define address schema
const addressSchema = new mongoose.Schema({
  email: String,
  fullName: String,
  phone: String,
  address: String,
  city: String,
  state: String,
  addressType: String,
});

const Address = mongoose.model('Address', addressSchema);

// Middleware
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

// Routes
app.post('/signup', async (req, res) => {
  try {
    const { username, email, password } = req.body;

    // Check if user already exists
    const existingUser = await User.findOne({ email });
    if (existingUser) {
      return res.status(400).json({ error: 'User already exists' });
    }
    // Create new user
    const newUser = new User({ username, email, password });
    await newUser.save();
    res.status(201).json({ message: 'User created successfully' });
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Internal server error' });
  }
});

// Endpoint for user login
app.post('/login', async (req, res) => {
  const { email, password } = req.body;

  console.log(email,"login")
  // Find user by email
  const user = await User.findOne({ email });
  if (!user) {
    return res.status(404).json({ error: 'User not found' });
  }

  // Compare password
  if (user.password !== password) {
    return res.status(401).json({ error: 'Invalid password' });
  }

  // Generate JWT token
  const token = jwt.sign({ email: user.email }, 'your_secret_key_here', { expiresIn: '1h' });

  res.json({ token });
});

// Endpoint for saving address
app.post('/save_address', async (req, res) => {
  try {
    const { email, fullName, phone, address, city, state, addressType } = req.body;

    console.log(email)
    console.log(fullName)
    console.log(phone)

    // Create new address
    const newAddress = new Address({ email, fullName, phone, address, city, state, addressType });
    await newAddress.save();

    console.log("Success")
    res.status(201).json({ message: 'Address saved successfully' });
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Internal server error' });
  }
});



// Endpoint for fetching user data
app.get('/user_data/:email', async (req, res) => {

  console.log("s")

  try {
    const { email } = req.params;
    console.log(email)

    // Find user by email
    const user = await Address.findOne({ email });
    if (!user) {

      console.log("can't dfind")
      return res.status(404).json({ error: 'User not found' });
    }


   // Destructure the user object to extract properties
   const { fullName,  phone, address, city, state, addressType } = user;

   console.log(user.fullName)


    // Return user data
    res.status(200).json({
      username: user.fullName,
      email: user.email,
      phone: user.phone,
    });
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Internal server error' });
  }
});


// Endpoint for updating user data
app.put('/update_user/:email', async (req, res) => {
  try {
    const { email } = req.params;
    const { username, phone } = req.body;

    console.log(username)
    console.log(phone)
    // Find user by email
    const user = await Address.findOne({ email });
    if (!user) {
      return res.status(404).json({ error: 'User not found' });
    }

    // Update user data
    user.username = username;
    user.phone = phone;
    await user.save();

    // Return success message
    res.status(200).json(
     
      { message: 'User updated successfully' });
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Internal server error' });
  }
});



// Start server
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
