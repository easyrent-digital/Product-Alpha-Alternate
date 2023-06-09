
// Import the necessary libraries and modules
import express from 'express'
import cors from 'cors'
import mongoose from 'mongoose'
import compression from 'compression'
import helmet from 'helmet'
import nocache from 'nocache'
import strings from './config/app.config.js'
import userRoutes from './routes/userRoutes.js'
import carRoutes from './routes/carRoutes.js'
import notificationRoutes from './routes/notificationRoutes.js'
import companyRoutes from './routes/companyRoutes.js'
import locationRoutes from './routes/locationRoutes.js'
import bookingRoutes from './routes/bookingRoutes.js'
import rateLimit from 'express-rate-limit'
import morgan from 'morgan';

// Retrieve environment variables for the database configuration
const DB_HOST = process.env.BC_DB_HOST
const DB_PORT = process.env.BC_DB_PORT
const DB_SSL = process.env.BC_DB_SSL.toLowerCase() === 'true'
const DB_SSL_KEY = process.env.BC_DB_SSL_KEY
const DB_SSL_CERT = process.env.BC_DB_SSL_CERT
const DB_SSL_CA = process.env.BC_DB_SSL_CA
const DB_DEBUG = process.env.BC_DB_DEBUG.toLowerCase() === 'true'
const DB_AUTH_SOURCE = process.env.BC_DB_AUTH_SOURCE
const DB_USERNAME = process.env.BC_DB_USERNAME
// INSECURE: const DB_PASSWORD = process.env.BC_DB_PASSWORD
const DB_APP_NAME = process.env.BC_DB_APP_NAME
const DB_NAME = process.env.BC_DB_NAME

const fs = require('fs');
let DB_PASSWORD;
try {
    DB_PASSWORD = fs.readFileSync('/run/secrets/mongo_root_password', 'utf8');
} catch (err) {
    console.error('Failed to read secret', err);
}

// Format the MongoDB URI using the environment variables
const DB_URI = `mongodb://${encodeURIComponent(DB_USERNAME)}:${encodeURIComponent(DB_PASSWORD)}@${DB_HOST}:${DB_PORT}/${DB_NAME}?authSource=${DB_AUTH_SOURCE}&appName=${DB_APP_NAME}`

let options = {}
if (DB_SSL) {
    options = {
        ssl: true,
        sslValidate: true,
        sslKey: DB_SSL_KEY,
        sslCert: DB_SSL_CERT,
        sslCA: [DB_SSL_CA]
    }
}

// Enable Mongoose debug mode if DB_DEBUG is set to true
mongoose.set('debug', DB_DEBUG)
// Set Mongoose Promise to use Node.js global Promise
mongoose.Promise = global.Promise
// Connect to MongoDB using Mongoose
mongoose.connect(DB_URI, options)
    .then(
        () => { console.log('Database is connected') },
        err => { console.error('Cannot connect to the database:', err) }
    )

// setup morgan for logging
app.use(morgan('combined'))

// Define rate limiter
const limiter = rateLimit({
    windowMs: 15 * 60 * 1000, // 15 minutes
    max: 100 // limit each IP to 100 requests per windowMs
  })

// --- TODO: Limit the CORS settings -- when ready: app.use(cors(corsOptions))
const corsOptions = {
    origin: 'http://example.com', // or a list of allowed origins
    methods: ['GET', 'POST'], // allowed methods
    allowedHeaders: ['Content-Type', 'Authorization'] // allowed headers
  }

// Initialize an express app
const app = express()
app.use(limiter)

// Apply Helmet middleware for securing Express apps with various HTTP headers
app.use(helmet.contentSecurityPolicy())
app.use(helmet.dnsPrefetchControl())
app.use(helmet.crossOriginEmbedderPolicy())
app.use(helmet.frameguard())
app.use(helmet.hidePoweredBy())
app.use(helmet.hsts())
app.use(helmet.ieNoOpen())
app.use(helmet.noSniff())
app.use(helmet.permittedCrossDomainPolicies())
app.use(helmet.referrerPolicy())
app.use(helmet.xssFilter())
app.use(helmet.originAgentCluster())
app.use(helmet.crossOriginResourcePolicy({ policy: 'cross-origin' }))
app.use(helmet.crossOriginOpenerPolicy())
// Apply no-cache middleware to disable client-side caching
app.use(nocache())
// Apply compression middleware to compress response bodies for all request that traverse through the middleware
app.use(compression({ threshold: 0 }))
// Built-in middleware function in Express to parse incoming requests with urlencoded payloads
app.use(express.urlencoded({ limit: '50mb', extended: true }))
// Built-in middleware function in Express to parse incoming requests with JSON payloads
app.use(express.json({ limit: '50mb' }))
// Apply CORS middleware to allow cross-origin requests ( --- TODO: NEEDS HARDENING)
app.use(cors())

// Define the base routes for each feature of the app
app.use('/', userRoutes)
app.use('/', companyRoutes)
app.use('/', locationRoutes)
app.use('/', carRoutes)
app.use('/', bookingRoutes)
app.use('/', notificationRoutes)

// Set the default language using the environment variable BC_DEFAULT_LANGUAGE
strings.setLanguage(process.env.BC_DEFAULT_LANGUAGE)

// global error handler
app.use(function (err, req, res, next) {
    console.error(err.stack)
    res.status(500).send('Something broke!')
})

// Export the configured Express app
export default app