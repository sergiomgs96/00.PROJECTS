# bot.py
import os
import random
import discord
from dotenv import load_dotenv



load_dotenv()
TOKEN = os.getenv('DISCORD_TOKEN')
GUILD = os.getenv('DISCORD_GUILD')

client = discord.Client()

@client.event
async def on_ready():
    for guild in client.guilds:
        if guild.name == GUILD:
            break

    print(
        f'{client.user} is connected to the following guild:\n'
        f'{guild.name}(id: {guild.id})'
    )

    members = '\n - '.join([member.name for member in guild.members])
    print(f'Guild Members:\n - {members}')

@client.event
async def on_message(message):
    if message.author == client.user:
        return

    quotes = [
        '¿Qué te crees que estoy intentando hacer? Gilipollas de mierda',
        'Eres un entusiasta',
        'Cool. Cool cool cool cool cool cool cool,',
        'Se esfumó como los japoneses en Nagasaki',
        'Ni dinero ni hierba, aquí sólo hay fiambres tíos',
    ]

    if 'paranoia'  in message.content:
        response = "P-WORD alert! Por favor, detenga toda actividad.", random.choice(quotes)
        await message.channel.send(response)

client.run(TOKEN)

