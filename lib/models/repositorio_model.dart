import 'owner_model.dart';

class Repositorio {
  int id;
  String nodeId;
  String name;
  String fullName;
  bool private;
  Owner owner;
  String htmlUrl;
  String description;
  bool fork;
  String url;
  String forksUrl;
  String keysUrl;
  String collaboratorsUrl;
  String teamsUrl;
  String hooksUrl;
  String issueEventsUrl;
  String eventsUrl;
  String assigneesUrl;
  String branchesUrl;
  String tagsUrl;
  String blobsUrl;
  String gitTagsUrl;
  String gitRefsUrl;
  String treesUrl;
  String statusesUrl;
  String languagesUrl;
  String stargazersUrl;
  String contributorsUrl;
  String subscribersUrl;
  String subscriptionUrl;
  String commitsUrl;
  String gitCommitsUrl;
  String commentsUrl;
  String issueCommentUrl;
  String contentsUrl;
  String compareUrl;
  String mergesUrl;
  String archiveUrl;
  String downloadsUrl;
  String issuesUrl;
  String pullsUrl;
  String milestonesUrl;
  String notificationsUrl;
  String labelsUrl;
  String releasesUrl;
  String deploymentsUrl;

  Repositorio(
      {this.id,
      this.nodeId,
      this.name,
      this.fullName,
      this.private,
      this.owner,
      this.htmlUrl,
      this.description,
      this.fork,
      this.url,
      this.forksUrl,
      this.keysUrl,
      this.collaboratorsUrl,
      this.teamsUrl,
      this.hooksUrl,
      this.issueEventsUrl,
      this.eventsUrl,
      this.assigneesUrl,
      this.branchesUrl,
      this.tagsUrl,
      this.blobsUrl,
      this.gitTagsUrl,
      this.gitRefsUrl,
      this.treesUrl,
      this.statusesUrl,
      this.languagesUrl,
      this.stargazersUrl,
      this.contributorsUrl,
      this.subscribersUrl,
      this.subscriptionUrl,
      this.commitsUrl,
      this.gitCommitsUrl,
      this.commentsUrl,
      this.issueCommentUrl,
      this.contentsUrl,
      this.compareUrl,
      this.mergesUrl,
      this.archiveUrl,
      this.downloadsUrl,
      this.issuesUrl,
      this.pullsUrl,
      this.milestonesUrl,
      this.notificationsUrl,
      this.labelsUrl,
      this.releasesUrl,
      this.deploymentsUrl});

  Repositorio.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    nodeId = map['node_id'];
    name = map['name'];
    fullName = map['full_name'];
    private = map['private'];
    owner = map['owner'] != null ? Owner.fromMap(map['owner']) : null;
    htmlUrl = map['html_url'];
    description = map['description'];
    fork = map['fork'];
    url = map['url'];
    forksUrl = map['forks_url'];
    keysUrl = map['keys_url'];
    collaboratorsUrl = map['collaborators_url'];
    teamsUrl = map['teams_url'];
    hooksUrl = map['hooks_url'];
    issueEventsUrl = map['issue_events_url'];
    eventsUrl = map['events_url'];
    assigneesUrl = map['assignees_url'];
    branchesUrl = map['branches_url'];
    tagsUrl = map['tags_url'];
    blobsUrl = map['blobs_url'];
    gitTagsUrl = map['git_tags_url'];
    gitRefsUrl = map['git_refs_url'];
    treesUrl = map['trees_url'];
    statusesUrl = map['statuses_url'];
    languagesUrl = map['languages_url'];
    stargazersUrl = map['stargazers_url'];
    contributorsUrl = map['contributors_url'];
    subscribersUrl = map['subscribers_url'];
    subscriptionUrl = map['subscription_url'];
    commitsUrl = map['commits_url'];
    gitCommitsUrl = map['git_commits_url'];
    commentsUrl = map['comments_url'];
    issueCommentUrl = map['issue_comment_url'];
    contentsUrl = map['contents_url'];
    compareUrl = map['compare_url'];
    mergesUrl = map['merges_url'];
    archiveUrl = map['archive_url'];
    downloadsUrl = map['downloads_url'];
    issuesUrl = map['issues_url'];
    pullsUrl = map['pulls_url'];
    milestonesUrl = map['milestones_url'];
    notificationsUrl = map['notifications_url'];
    labelsUrl = map['labels_url'];
    releasesUrl = map['releases_url'];
    deploymentsUrl = map['deployments_url'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['node_id'] = this.nodeId;
    data['name'] = this.name;
    data['full_name'] = this.fullName;
    data['private'] = this.private;
    if (this.owner != null) {
      data['owner'] = this.owner.toMap();
    }
    data['html_url'] = this.htmlUrl;
    data['description'] = this.description;
    data['fork'] = this.fork;
    data['url'] = this.url;
    data['forks_url'] = this.forksUrl;
    data['keys_url'] = this.keysUrl;
    data['collaborators_url'] = this.collaboratorsUrl;
    data['teams_url'] = this.teamsUrl;
    data['hooks_url'] = this.hooksUrl;
    data['issue_events_url'] = this.issueEventsUrl;
    data['events_url'] = this.eventsUrl;
    data['assignees_url'] = this.assigneesUrl;
    data['branches_url'] = this.branchesUrl;
    data['tags_url'] = this.tagsUrl;
    data['blobs_url'] = this.blobsUrl;
    data['git_tags_url'] = this.gitTagsUrl;
    data['git_refs_url'] = this.gitRefsUrl;
    data['trees_url'] = this.treesUrl;
    data['statuses_url'] = this.statusesUrl;
    data['languages_url'] = this.languagesUrl;
    data['stargazers_url'] = this.stargazersUrl;
    data['contributors_url'] = this.contributorsUrl;
    data['subscribers_url'] = this.subscribersUrl;
    data['subscription_url'] = this.subscriptionUrl;
    data['commits_url'] = this.commitsUrl;
    data['git_commits_url'] = this.gitCommitsUrl;
    data['comments_url'] = this.commentsUrl;
    data['issue_comment_url'] = this.issueCommentUrl;
    data['contents_url'] = this.contentsUrl;
    data['compare_url'] = this.compareUrl;
    data['merges_url'] = this.mergesUrl;
    data['archive_url'] = this.archiveUrl;
    data['downloads_url'] = this.downloadsUrl;
    data['issues_url'] = this.issuesUrl;
    data['pulls_url'] = this.pullsUrl;
    data['milestones_url'] = this.milestonesUrl;
    data['notifications_url'] = this.notificationsUrl;
    data['labels_url'] = this.labelsUrl;
    data['releases_url'] = this.releasesUrl;
    data['deployments_url'] = this.deploymentsUrl;
    return data;
  }
}
