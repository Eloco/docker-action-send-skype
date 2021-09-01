# Send Skype Github Action

<p align="left">
  <a href="https://github.com/Eloco/docker-action-send-skype"><img alt="GitHub Actions status" src="https://github.com/actions/setup-dotnet/workflows/Main%20workflow/badge.svg"></a>
</p>

This action that simply sends file/message to multiple skype_ids(chat_group_id or user_id).

## inputs:
  skype_username:
    description: 'the email address which u input to log in'
    required: true
    default: 'eloco@outlook.com'
  skype_password:
    description: 'passwd'
    required: true
    default: 'qwert'
  skype_ids:
    description: 'input both user_id or group_id in skype, also support multiple id which connect by space'
    required: true
    default: '19:655268b00f704dfc8e71592f93d73bd3@thread.skype 19:06edc5b67f4a48eda7bfdff034918978@thread.skype'
  send_msg_path:
    description: 'send all the message in the path [support both folder and file, not support sub-folder]'
    required: false
    default: 'message.txt'
  send_file_path:
    description: 'send all the file in the path [support both folder and file, not support sub-folder]'
    required: false
    default: './download/'

## outputs:
```yaml
  random-number:
    description: "Random number"
    value: ${{ steps.random-number-generator.outputs.random-id }}
```

## Usage

Basic:
```yaml
- name: Send skype
  uses: Eloco/docker-action-send-skype@v1
  with:
    # Required skype username:
    skype_username : ${{ secrets.SKYPE_USERNAME }}
    # Required skype password:
    skype_password : ${{ secrets.SKYPE_PASSWORD }}
    # Required skype_ids(both user_id  group_id) which u want to send to [also support multiple id which connect by space]
    skype_ids      : 19:655268b00f704dcccc71592f93d73bd3@thread.skype 19:06edc5b67f4a4888a7bfdff034918978@thread.skype
    # Optional (recommended): the path of message file or message file's folder 
    send_msg_path  : msg.txt
    # Optional (recommended): the path of attach file or attach file's folder 
    send_file_path : download/
```
