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

  robot.hear /(なんでもします|何でもします)/, (msg) ->
    msg.send "ん？"

  robot.hear /高木屋/, (msg) ->
    user_name = msg.message.user.name
    msg.send "@#{user_name}: 高木\"や\""

  robot.respond /おみくじ/i, (msg) ->
    # 参考:https://github.com/bouzuya/hubot-omikuji
    user_name = msg.message.user.name
    data = data ? ["大吉", "中吉", "小吉", "吉", "末吉", "凶", "大凶"]
    res.send "@#{user_name}: あなたの運勢は..."+res.random(data)+"です！"

  robot.respond /tutorial/i, (msg) ->
    msg.send """

Getting Started with Slack (Slackをはじめよう)
http://misw.jp/wiki/index.cgi?page=Slack%A4%F2%A4%CF%A4%B8%A4%E1%A4%E8%A4%A6
Managing Channels and Private Groups (チャンネルとプライベートグループの管理)
http://misw.jp/wiki/index.cgi?page=%A5%C1%A5%E3%A5%F3%A5%CD%A5%EB%A4%C8%A5%D7%A5%E9%A5%A4%A5%D9%A1%BC%A5%C8%A5%B0%A5%EB%A1%BC%A5%D7%A4%CE%B4%C9%CD%FD
"""
