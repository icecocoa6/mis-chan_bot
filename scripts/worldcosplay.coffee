module.exports = (robot) ->
  robot.respond /cosplay/i, (msg) ->
    n = Math.floor(Math.random()*24)
    home = "http://worldcosplay.net"
    msg.http("http://worldcosplay.net/api/photo/list?limit=24")
      .get() (err, res, body) ->
        msg.send "#{home}#{JSON.parse(body).list[n].photo.url}"

 
