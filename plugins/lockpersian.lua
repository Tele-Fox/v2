local function run(msg, matches)
    if is_owner(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['lock_persian'] then
                lock_persian = data[tostring(msg.to.id)]['settings']['lock_persian']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
     if msg.to.type == 'channel' then
delete_msg(msg.id, ok_cb, false)
     channel_kick_user("channel#id"..msg.to.id, 'user#id'..msg.from.id, ok_cb, false)
    end
end
 
return {
  patterns = {
    "([\216-\219][\128-\191])"
  },
  run = run
}