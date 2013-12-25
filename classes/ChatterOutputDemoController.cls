public with sharing class ChatterOutputDemoController {
	public ConnectApi.FeedItemPage feedItemPage{get;set;}
	public Object TextSegmentType{get{
		return ConnectApi.MessageSegmentType.Text;
	}}
	public Object MentionSegmentType{get{
		return ConnectApi.MessageSegmentType.Mention;
	}}
	public ChatterOutputDemoController() {
		//code to get chatter newsfeed
		feedItemPage = ConnectApi.ChatterFeeds.getFeedItemsFromFeed(null, ConnectApi.FeedType.News, 'me');
	}
}