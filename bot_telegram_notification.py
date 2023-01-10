import telepot
token = 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy' # Your telegram token .
receiver_id = -xxxxxxxxx

bot = telepot.Bot(token)
message = "*[Bold Text in here]* \n 💵 *Bold Text Again*\nfor `this is monoscape`\n \ncc @BotFather"

bot.sendMessage(receiver_id, message , parse_mode= 'Markdown' )
