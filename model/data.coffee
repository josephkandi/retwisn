module.exports = {
  global: {
    nextUserId: "global:nextUserId"
    nextPostId: "global:nextPostId"
  }

  # SET uid:1000:username antirez
  uid_username: (uid) -> "uid:" + uid + ":username"

  # SET uid:1000:password p1pp0
  uid_password: (uid) -> "uid:" + uid + ":password"

  # uid:1000:followers => Set of uids of all the followers users
  uid_followers: (uid) -> "uid:" + uid + ":followers"

  # uid:1000:following => Set of uids of all the following users
  uid_following: (uid) -> "uid:" + uid + ":following"

  # uid:1000:posts => a List of post ids, every new post is LPUSHed here.
  uid_posts: (uid) -> "uid:" + uid + ":posts"

  # SET uid:1000:auth fea5e81ac8ca77622bed1c2132a021f9
  uid_auth: (uid) -> "uid:" + uid + ":auth"

  # SET auth:fea5e81ac8ca77622bed1c2132a021f9 1000
  auth_uid: (secret) -> "auth:" + secret

  # SET username:antirez:uid 1000
  username_uid: (username) -> "username:" + username + ":uid"

  # SET post:10343 "$owner_id|$time|I'm having fun with Retwis"
  post: (postId) -> "post:" + postId

  # LPUSH uid 3
  uid: "uid"
}