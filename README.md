# Shodan-mattermost

Based on this project, you will be able to create a simple [Slash command](https://docs.mattermost.com/developer/slash-commands.html) to use in Mattermost (and maybe in Slack too) for [Shodan.io](https://www.shodan.io/). 

Docker image build

docker build -t shodanmatter:1 .

docker run -e MY_USER=test -e PORT=8088 -e SHODAN_API_KEY=xxxxxxx -e MATTERMOST_TOKEN=yyyyyyyy  ... <shodanmatter:1> ...

### Preview

Pro-tip: *For a quick overview, you can spin up a Mattermost Preview instance using Docker (Link to the [Hub](https://hub.docker.com/r/mattermost/mattermost-preview/)).*

```bash
docker run --name mattermost-preview -d --publish 8065:8065 mattermost/mattermost-preview
```

The instance is then accessible at: *http://0.0.0.0:8065*

### Installation

As soon as your Mattermost instance is up and running, you should go to the System console and enable Custom Slack Commands.

![Enabling Custom Slash commands](https://github.com/PaulSec/Shodan-mattermost/blob/master/files/enable_notifications.png?raw=true)

Then, go to Menu > Integrations > Custom Slash Command.

![Creating a Custom Slash command](https://github.com/PaulSec/Shodan-mattermost/blob/master/files/create_slash_command.png?raw=true)

Fill in the information regarding your Slash command appropriately.

![Filling in the information](https://github.com/PaulSec/Shodan-mattermost/blob/master/files/fill_information_1.png?raw=true)
![Filling in the information](https://github.com/PaulSec/Shodan-mattermost/blob/master/files/fill_information_2.png?raw=true)

Your Slash command has now been created.

![Custom Slash Command created](https://github.com/PaulSec/Shodan-mattermost/blob/master/files/slash_command_created.png?raw=true)

Make sure that you copy token generated by Mattermost and edit respectively both tokens (Shodan and Mattermost ones) in *mattershodan.py*.

```python
SHODAN_API_KEY = "XXXXXXXXXXXXXXXXXXXXXXXX"
MATTERMOST_TOKEN = "YYYYYYYYYYYYYYYYYYYYYYYY"
```

### Usage

Launch your web server: 


```bash
✗ python mattershodan.py
Starting matterslash server, use <Ctrl-C> to stop
```

And finally you can start typing your commands in the Mattermost Channel of your choice, like: 

```
/shodan_search_host 115.203.10.170
```

![Usage of the command](https://github.com/PaulSec/Shodan-mattermost/blob/master/files/usage.png?raw=true)

# Contributing

The code has been released under MIT License. Feel free to send your Pull Requests over if you need a specific method. 
You can also ping me at [@PaulWebSec](https://twitter.com/PaulWebSec) if you need anything.

This code has highly been inspired from MatterSlash source code, available [here](https://github.com/bitbackofen/slash-server-for-mattermost/blob/master/matterslash.py)
