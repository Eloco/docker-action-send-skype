# Send Skype Github Action

<p align="left">
  <a href="https://github.com/Eloco/docker-action-send-skype"><img alt="GitHub Actions status" src="https://github.com/actions/setup-dotnet/workflows/Main%20workflow/badge.svg"></a>
</p>

This action that simply sends file/message to multiple skype_ids( both group_id and user_id ).
- message support [emoji](https://carpedm20.github.io/emoji/)

## Usage

See [action.yml](action.yml)

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
    # Optional (recommended): the path of message file or message file's folder [support emoji]
    send_msg_path  : msg.txt
    # Optional (recommended): the path of attach file or attach file's folder 
    send_file_path : download/
```
