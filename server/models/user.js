const mongoose = require('mongoose');

const userSchema = mongoose.Schema({
    username: {
        type: String,
        required: true,
        trim: true,
    },
    email: {
        type: String,
        required: true,
        trim: true,
        validate: {
            validator: (value) => {
                const re = /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
                return value.match(re);
            },
            message: 'Please enter a valid email address'
        }
    },
    password: {
        type: String,
        required: true,
        validate: {
            validator: (value) => {
                return value.length > 5;
            },
            message: 'Please enter a valid password'
        }
    },
    address: {
        type: String,
        default: '',
    },
    type: {
        type: String,
        default: 'user',
    }
    // cart
})

const User = mongoose.model('User', userSchema);

module.exports = User;