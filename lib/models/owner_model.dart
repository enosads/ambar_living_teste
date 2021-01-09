class Owner {
  String login;
  int id;
  String nodeId;
  String avatarUrl;
  String gravatarId;
  String url;
  String htmlUrl;
  String followersUrl;
  String followingUrl;
  String gistsUrl;
  String starredUrl;
  String subscriptionsUrl;
  String organizationsUrl;
  String reposUrl;
  String eventsUrl;
  String receivedEventsUrl;
  String type;
  bool siteAdmin;

  Owner(
      {this.login,
      this.id,
      this.nodeId,
      this.avatarUrl,
      this.gravatarId,
      this.url,
      this.htmlUrl,
      this.followersUrl,
      this.followingUrl,
      this.gistsUrl,
      this.starredUrl,
      this.subscriptionsUrl,
      this.organizationsUrl,
      this.reposUrl,
      this.eventsUrl,
      this.receivedEventsUrl,
      this.type,
      this.siteAdmin});

  Owner.fromMap(Map<String, dynamic> map) {
    login = map['login'];
    id = map['id'];
    nodeId = map['node_id'];
    avatarUrl = map['avatar_url'];
    gravatarId = map['gravatar_id'];
    url = map['url'];
    htmlUrl = map['html_url'];
    followersUrl = map['followers_url'];
    followingUrl = map['following_url'];
    gistsUrl = map['gists_url'];
    starredUrl = map['starred_url'];
    subscriptionsUrl = map['subscriptions_url'];
    organizationsUrl = map['organizations_url'];
    reposUrl = map['repos_url'];
    eventsUrl = map['events_url'];
    receivedEventsUrl = map['received_events_url'];
    type = map['type'];
    siteAdmin = map['site_admin'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['login'] = this.login;
    data['id'] = this.id;
    data['node_id'] = this.nodeId;
    data['avatar_url'] = this.avatarUrl;
    data['gravatar_id'] = this.gravatarId;
    data['url'] = this.url;
    data['html_url'] = this.htmlUrl;
    data['followers_url'] = this.followersUrl;
    data['following_url'] = this.followingUrl;
    data['gists_url'] = this.gistsUrl;
    data['starred_url'] = this.starredUrl;
    data['subscriptions_url'] = this.subscriptionsUrl;
    data['organizations_url'] = this.organizationsUrl;
    data['repos_url'] = this.reposUrl;
    data['events_url'] = this.eventsUrl;
    data['received_events_url'] = this.receivedEventsUrl;
    data['type'] = this.type;
    data['site_admin'] = this.siteAdmin;
    return data;
  }
}
