var dashboardData = {};


//table Widget data and options for Groups table
dashboardData.groupsTableData = {
	"bAutoWidth": false,
	"bFilter" : false,
	"bLengthChange" : false,
	"bInfo" : false,
	"bPaginate" : false,
	"bSort": false,
	"bProcessing" : true,
	"sDom" : 'rtlip',
	"bServerSide" : true,
	"sAjaxSource" : "getDashboardGroups",	
	"sAjaxDataProp" : "groups",
	"aoColumns" : [
		{
			"mDataProp" : "name",
			"sTitle" : "Name"
		}, {
			"mDataProp" : "createdOn",
			"sTitle" : "Created on"
		}, {
			"mDataProp" : "lastModified",
			"sTitle" : "Last modified"
		}
	]
};

dashboardData.groupsTableRefreshCallback = function() {
	return { "aaData" : "" }
}

//table Widget data and options for Notifications table
dashboardData.notificationsTableData = {
	"bAutoWidth": false,
	"bFilter" : false,
	"bLengthChange" : false,
	"bInfo" : false,
	"bPaginate" : false,
	"bSort": false,
	"bProcessing" : true,
	"sDom" : 'rtlip',
	"bServerSide" : true,
	"sAjaxSource" : "getDashboardNotifications",	
	"sAjaxDataProp" : "notifications",
	"aoColumns" : [
		{
			"mDataProp" : "name",
			"sTitle" : "Name"
		}, {
			"mDataProp" : "createdOn",
			"sTitle" : "Created on"
		}, {
			"mDataProp" : "lastModified",
			"sTitle" : "Last modified"
		}
	]
};

dashboardData.notificationsTableRefreshCallback = function() {
	return { "aaData" : "" }
}
	
//table Widget data and options for Templates table
dashboardData.templatesTableData = {
	"bAutoWidth": false,
	"bFilter" : false,
	"bLengthChange" : false,
	"bInfo" : false,
	"bPaginate" : false,
	"bSort": false,
	"bProcessing" : true,
	"sDom" : 'rtlip',
	"bServerSide" : true,
	"sAjaxSource" : "getDashboardTemplates",	
	"sAjaxDataProp" : "templates",
	"aoColumns" : [
		{
			"mDataProp" : "name",
			"sTitle" : "Name"
		}, {
			"mDataProp" : "createdOn",
			"sTitle" : "Created on"
		}, {
			"mDataProp" : "lastModified",
			"sTitle" : "Last modified"
		}
	]
};

dashboardData.templatesTableRefreshCallback = function() {
	return { "aaData" : "" }
}