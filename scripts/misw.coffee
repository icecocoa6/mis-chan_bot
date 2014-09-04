# Description:
#   Custom commands surrounding Hubot uptime.

module.exports = (robot) ->
  robot.hear /ぬるぽ/, (msg) ->
    msg.send '''
 
   Λ＿Λ    ＼＼
  （ ・∀・）   | | ｶﾞｯ
 と       ）   | |
   Ｙ /ノ     人
    / ）     <  >  _Λ∩
 ＿/し' ／／  Ｖ｀Д´）/
 （＿フ彡            / ←>>1
'''

  robot.hear /^joined \#/, (msg) ->
    user_name = msg.message.user.name
    msg.send "@#{user_name}: Yo."

  robot.hear /(寝る|寝ま)/, (msg) ->
    user_name = msg.message.user.name
    msg.send "@#{user_name}: Good night."

  robot.hear /ラーメン/, (msg) ->
    user_name = msg.message.user.name
    msg.send "@#{user_name}: 高木やですね？ ご一緒します！"
