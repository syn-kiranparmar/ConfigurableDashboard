function createDashboard(widgetList) {
	var dashboardJSON = [];
	for(var i = 0; i < widgetList.length; i++) {
		var wId = widgetList[i].id;
		var wName = widgetList[i].name;
		var wTitle = widgetList[i].title;
		
		var tableContentData;
		var tableRefreshCallback;
		
		if(wName == 'groups_table') {
			tableContentData = dashboardData.groupsTableData;
			tableRefreshCallback = dashboardData.groupsTableRefreshCallback;
		}
		else if(wName == 'notifications_table') {
			tableContentData = dashboardData.notificationsTableData;
			tableRefreshCallback = dashboardData.notificationsTableRefreshCallback;
		}
		else if(wName == 'templates_table') {
			tableContentData = dashboardData.templatesTableData;
			tableRefreshCallback = dashboardData.templatesTableRefreshCallback;
		}
		if(wName == 'campaigns_table') {
			tableContentData = dashboardData.groupsTableData;
			tableRefreshCallback = dashboardData.groupsTableRefreshCallback;
		}

		dashboardJSON.push({
			widgetTitle : wTitle,
			widgetId : wName,
			widgetType : "table",
			setJqueryStyle : true,
			widgetContent : tableContentData,
			enableRefresh : true,
			refreshCallBack : tableRefreshCallback
		});
	}	

	//basic initialization example
	$("#contentAuthorDashboard").sDashboard({
		dashboardData : dashboardJSON
	});	
}
