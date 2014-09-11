module.exports = (robot) ->
  robot.respond /cosplay/i, (msg) ->
    n = Math.floor(Math.random()*24)
    msg.http("http://worldcosplay.net/api/photo/list?limit=24")
      .get() (err, res, body) ->
        msg.send "#{JSON.parse(body).list[n].photo.sq300_url}"

 
