# Description:
#   Custom commands surrounding Hubot uptime.

module.exports = (robot) ->
  robot.hear /ぬるぽ/, (msg) ->
    user_name = msg.message.user.name
    msg.send """ 
 
   Λ＿Λ    ＼＼
  （ ・∀・）   | | ｶﾞｯ
 と       ）   | |
   Ｙ /ノ     人
    / ）     <  >  _Λ∩
 ＿/し' ／／  Ｖ｀Д´）/
 （＿フ彡            / ←  #{user_name}
"""

  robot.hear /^joined \#/i, (msg) ->
    user_name = msg.message.user.name
    msg.send "@#{user_name}: Yo."

  robot.hear /(寝る|寝ま)/, (msg) ->
    user_name = msg.message.user.name
    msg.send "@#{user_name}: Good night."

  robot.hear /ラーメン/, (msg) ->
    user_name = msg.message.user.name
    msg.send "@#{user_name}: 高木やですね？ ご一緒します！"

  robot.hear /(頑張る|頑張り|がんばる|がんばり|伊東ライフ)/, (msg) ->
    msg.send "がんばれ♡がんばれ♡"

  robot.hear /乙/, (msg) ->
    msg.send "(・ω・｀)乙 これは乙じゃなくてポニーテールなんだからね！"
