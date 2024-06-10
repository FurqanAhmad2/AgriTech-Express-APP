const express = require('express');
const bodyParser = require('body-parser');
const mongoose = require('mongoose');
const jwt = require('jsonwebtoken');
const nodemailer = require('nodemailer');

const app = express();
const PORT = process.env.PORT || 3002;

mongoose.connect('mongodb://localhost:27017/my_database');

const db = mongoose.connection;
db.on('error', console.error.bind(console, 'MongoDB connection error:'));

let transporter = nodemailer.createTransport({
  service: 'Gmail',
  auth: {
      user: 'Sumaishkumar9@gmail.com',
      pass: 'eaqarrkoyzskcvmd'
  }
});

// Define user schema
const userSchema = new mongoose.Schema({
  username: { type: String, required: true },
  email: { type: String, required: true, unique: true },
  password: { type: String, required: true },
  status: { type: String, default: 'Unverified' },
  verificationCode: { type: String, required: true },
});


function generateVerificationCode() {
  return Math.floor(1000000 + Math.random() * 9000000).toString();
}


const sendVerificationEmail = async (email, verificationCode) => {
  const mailOptions = {
    from: process.env.EMAIL_USER,
    to: email,
    subject: 'Email Verification',
    text: `Your verification code is ${verificationCode}`,
  };

  try {
    await transporter.sendMail(mailOptions);
    console.log('Verification email sent successfully');
  } catch (error) {
    console.error('Error sending verification email:', error);
  }
};


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


const newsSchema = new mongoose.Schema({
  _id: {
    type: String,
    required: true,
  },
  title: {
    type: String,
    required: true,
  },
  description: {
    type: String,
    required: true,
  },
  imageUrl: {
    type: String,
    required: true,
  },
});

const News = mongoose.model('News', newsSchema);

const seedSchema = new mongoose.Schema({
  name: {
    type: String,
    required: true
  },
  price: {
    type: String,
    required: true
  },
  imageLink: {
    type: String,
    required: true
  },
  description: {
    type: String // Adding description field without "required" constraint
  }
});

const Seed = mongoose.model('Seed', seedSchema);

// Define the feedback schema
const feedbackSchema = new mongoose.Schema({
  name: { type: String, required: true },
  email: { type: String, required: true },
  feedback: { type: String, required: true },
}, { timestamps: true });

const Feedback = mongoose.model('Feedback', feedbackSchema);

module.exports = Feedback;



// Middleware
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

app.post('/signup', async (req, res) => {
  try {
    const { username, email, password } = req.body;

    // Check if user already exists
    const existingUser = await User.findOne({ email });
    if (existingUser) {
      return res.status(400).json({ error: 'User already exists' });
    }

    // Generate verification code
    const verificationCode = generateVerificationCode();

    // Create new user with unverified status and verification code
    const newUser = new User({
      username,
      email,
      password, // Note: Password should be hashed
      status: 'Unverified',
      verificationCode,
    });

    await newUser.save();

    // Send verification email
    await sendVerificationEmail(email, verificationCode);

    res.status(201).json({ message: 'User created successfully. Please check your email for the verification code.' });
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Internal server error' });
  }
});


// Endpoint for user login
app.post('/login', async (req, res) => {
  const { email, password } = req.body;

  console.log(email, "login");
  console.log(password, "login");

  // Find user by email
  const user = await User.findOne({ email });
  if (!user) {
    return res.status(404).json({ error: 'User not found' });
  }

  // Compare password
  if (user.password !== password) {
    console.log(password, "Invalid");
    return res.status(401).json({ error: 'Invalid password' });
  }

  // Generate JWT token
  const token = jwt.sign({ email: user.email }, 'your_secret_key_here', { expiresIn: '1h' });

  // Include user status in the response
  res.json({ token, status: user.status });
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


// Endpoint for verifying the code
// Verify code route
app.post('/verify-code', async (req, res) => {
  const { email, code } = req.body;

  console.log(email)
  console.log(code)

  try {
      const user = await User.findOne({ email });
      if (!user) {
          return res.status(400).json({ error: 'User not found' });
      }

      if (user.verificationCode === code) {
          user.status = "Verified";
          await user.save();
          res.status(200).send({ status: 'Verification successful', user: user });
      } else {
          res.status(400).send({ status: 'Invalid code' });
      }
  } catch (error) {
      console.error('Error verifying code:', error);
      res.status(500).send({ status: 'Internal server error' });
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


// Endpoint for getting all news articles
app.get('/news', async (req, res) => {
  try {
    // Retrieve all news articles from the database
    const newsArticles = await News.find();

    // Respond with the list of news articles
    res.status(200).json(newsArticles);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Internal server error' });
  }
});


// Endpoint for adding seed
app.post('/addSeed', async (req, res) => {
  try {
    const { name, price, imageLink, description } = req.body; // Include description in request body

    // Create new seed with name, price, imageLink, and description
    const newSeed = new Seed({ name, price, imageLink, description });
    await newSeed.save();

    res.status(201).json({ message: 'Seed added successfully' });
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Internal server error' });
  }
});

// Endpoint for fetching products
app.get('/products', async (req, res) => {
  try {

    console.log("here i am MF")
    // Retrieve products from the database
    const products = await Seed.find();
    console.log(products)
    // Respond with the list of products
    res.status(200).json(products);
  } catch (error) {
    console.error('Error fetching products:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
});


// Feedback submission endpoint
app.post('/feedback', async (req, res) => {
  try {
    const { name, email, feedback } = req.body;

    const newFeedback = new Feedback({ name, email, feedback });
    await newFeedback.save();

    // Send feedback email
    const mailOptions = {
      from: process.env.EMAIL_USER,
      to: "Sumaishkumar9@gmail.com",
      subject: 'New Feedback Received',
      text: `Name: ${name}\nEmail: ${email}\nFeedback: ${feedback}`
    };

    transporter.sendMail(mailOptions, (error, info) => {
      if (error) {
        console.error('Error sending email:', error);
        return res.status(500).json({ Status: 'Feedback Submitted, but email failed to send', error: error.message });
      }
      console.log('Email sent:', info.response);
      res.status(200).json({ Status: 'Feedback Submitted Successfully and email sent' });
    });

  } catch (error) {
    console.error('Error submitting feedback:', error);
    res.status(500).json({ Status: 'Submission Failed', error: error.message });
  }
});


// Start server
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
