//Libraries
const path = require('path');
const express = require('express');
const multer = require('multer');
const { check, checkSchema, validationResult } = require('express-validator');
const nier = require('./Model/nier');

//Setup defaults for script
app.use(cors());
app.use(express.static("public"));


//Stylesheet
app.use(express.static(__dirname + '/public'));
//Webpage
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'public', 'index.html'));
});




//Setup defaults for script
const app = express();
const storage = multer.diskStorage({
    //Logic where to upload file
    destination: function (request, file, callback) {
        callback(null, 'uploads/')
    },
    //Logic to name the file when uploaded
    filename: function (request, file, callback) {
        /**
         * @source https://stackoverflow.com/questions/19811541/get-file-name-from-absolute-path-in-nodejs
         */
        callback(null, path.parse(file.originalname).name + '-' + Date.now() + path.parse(file.originalname).ext)
    }
})
const upload = multer({
    storage: storage,
    //Validation for file upload
    fileFilter: (request, file, callback) => {
        const allowedFileMimeTypes = ["image/png", "image/jpg", "image/jpeg"];
        callback(null, allowedFileMimeTypes.includes(file.mimetype));
    }
});
const port = 80 //Default port to http server

app.get(
    '/nier/',
    upload.none(),
    //check(...app, ...)
    async (request, response) => {
        let result = {};
        try {
            result = await nier.getAll(request.query);
        } catch (error) {
            return response
                .status(500) //Error code
                .json({message: 'Something went wrong with the server.'});
   
        }
        //Default response object
        response.json({'data': result});
});

app.get(
    '/nier/:id/',
    upload.none(),
    //check(...app, ...)
    async (request, response) => {
        let result = {};
        try {
            result = await weapon.getAll(request.query);
        } catch (error) {
            return response
                .status(500) //Error code
                .json({message: 'Something went wrong with the server.'});
   
        }
        //Default response object
        response.json({'data': result});
});

app.post(
    '/nier/',
    upload.none(),
    //check(...app, ...)
    async (request, response) => {
        let result = {};
        try {
            result = await nier.insert(request.query);
        } catch (error) {
            return response
                .status(500) //Error code
                .json({message: 'Something went wrong with the server.'});
   
        }
        //Default response object
        response.json({'data': result});
});

app.put(
    '/nier/:id/',
);

app.delete(
   '/nier/:id/',
);  



app.listen(port, () => {
    console.log(`Example app listening at http://localhost:${port}`);
})