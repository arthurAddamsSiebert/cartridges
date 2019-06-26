BEGIN

	-- rename syndication target 'SoqueroDataFeed' to 'FeedDynamixFeed'
	UPDATE syndication syn
	SET syn.targetid = 'FeedDynamixFeed'
	WHERE syn.targetid = 'SoqueroDataFeed';
	
	COMMIT;
	
END;
/