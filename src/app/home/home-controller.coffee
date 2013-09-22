class HomeController

  get: (req, res) ->
    errMessage = (req.flash 'error')?[0]
    console.log errMessage
    res.render 'index', {error: errMessage }

  login: (req, res) =>
    username = req.body.username
    password = req.body.password

    if not (username?.length and password?.length)
      redirectError req, res, '/', "Username and password cannot be empty"
    else
      @userService.login username, password, (err) ->
        if err?
          redirectError req, res, '/', err.message
        else
          req.session.username = username
          res.redirect '/timeline'

  logout: (req, res) =>
    req.session.destroy (err) ->
      res.redirect '/'

module.exports = HomeController