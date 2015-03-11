package main.com.metlife.pol.web.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import main.com.metlife.pol.exception.PoLException;
import main.com.metlife.pol.util.PoLConstants;
import main.com.metlife.pol.web.model.DashboardComponent;
import main.com.metlife.pol.web.model.DashboardConfigure;
import main.com.metlife.pol.web.model.Group;
import main.com.metlife.pol.web.model.GroupTableModel;
import main.com.metlife.pol.web.model.Notification;
import main.com.metlife.pol.web.model.NotificationTableModel;
import main.com.metlife.pol.web.model.Template;
import main.com.metlife.pol.web.model.TemplateTableModel;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class DashboardController {

	private static final String DB_DRIVER = "com.mysql.jdbc.Driver";
	private static final String DB_CONNECTION = "jdbc:mysql://localhost/kiran?user=root&password=";
	private static final String DB_USER = "root";
	private static final String DB_PASSWORD = "";	
	
	@RequestMapping("/getContentAuthorWidgets")
	public @ResponseBody List<DashboardComponent> getContentAuthorWidgets() {
		return getWidgets("true");
	}
	
	private List<DashboardComponent> getWidgets(String isActive) {
		try{
			Connection dbConnection = getDbConnection();
			Statement statement = dbConnection.createStatement();
			StringBuilder sql = new StringBuilder("SELECT * FROM dashboard ");
			
			if(isActive != null && !isActive.equals(""))
				sql.append("where active = '").append(isActive).append("'");			
			
			List<DashboardComponent> dashboardComponents = new ArrayList<DashboardComponent>();			
			
			ResultSet resultSet = statement.executeQuery(sql.toString());
			while(resultSet.next()) {
				String id = String.valueOf(resultSet.getInt("id"));
				String name = resultSet.getString("name");
				String title = resultSet.getString("title");
				String active = resultSet.getString("active");
				dashboardComponents.add(new DashboardComponent(id, name, title, active));
			}
			return dashboardComponents;
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	
	@RequestMapping(value = "/removeWidget", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody String removeWidget(@RequestParam("widgetId") String widgetId) {
		StringBuilder result = new StringBuilder("{\"result\":");
		
		try{
			Connection dbConnection = getDbConnection();
	        Statement statement = dbConnection.createStatement();
	        StringBuilder sql = new StringBuilder();
	        sql.append("UPDATE dashboard SET active = 'false'  WHERE name='");
	        sql.append(widgetId).append("'");
	        
	        statement.executeUpdate(sql.toString());
	        result.append("\"success\"}");
		}
		catch(Exception e) {
			result.append("\"failure\"}");
        } 
		return result.toString(); 
	}
	
	@RequestMapping(value = "/getDashboardGroups", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public GroupTableModel getGroups(HttpServletRequest request) {
		GroupTableModel groupTableModel = null;
		try {
			
			groupTableModel = new GroupTableModel();
			List<Group> group = new ArrayList<Group>();

			Connection dbConnection = getDbConnection();
			Statement statement = dbConnection.createStatement();
			
			String sql = "SELECT * FROM groups";
			ResultSet resultSet = statement.executeQuery(sql);
			int count = 0;
			
			while(resultSet.next()) {
				group.add(new Group(resultSet.getInt(1), resultSet.getString(2), new Date(), new Date()));
				count++;
			}

			groupTableModel.setGroups(group);
			groupTableModel.setiTotalDisplayRecords(count);
			groupTableModel.setiTotalRecords(count);
			groupTableModel.setsEcho(request.getParameter(PoLConstants.SECHO));
			groupTableModel.setsColumns(request
					.getParameter(PoLConstants.TOTAL_COLUMNS));

			
		} catch (Exception e) {
			throw new PoLException(e);
		}
		return groupTableModel;
	}
	
	@RequestMapping(value = "/getDashboardNotifications", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public NotificationTableModel getNotifications(HttpServletRequest request) {
		NotificationTableModel notifTableModel = null;
		try {
			
			notifTableModel = new NotificationTableModel();
			List<Notification> notification = new ArrayList<Notification>();

			Connection dbConnection = getDbConnection();
			Statement statement = dbConnection.createStatement();
			
			String sql = "SELECT * FROM notifications";
			ResultSet resultSet = statement.executeQuery(sql);
			int count = 0;
			
			while(resultSet.next()) {
				notification.add(new Notification(resultSet.getInt(1), resultSet.getString(2), new Date(), new Date()));
				count++;
			}

			notifTableModel.setNotifications(notification);
			notifTableModel.setiTotalDisplayRecords(count);
			notifTableModel.setiTotalRecords(count);
			notifTableModel.setsEcho(request.getParameter(PoLConstants.SECHO));
			notifTableModel.setsColumns(request
					.getParameter(PoLConstants.TOTAL_COLUMNS));

			
		} catch (Exception e) {
			throw new PoLException(e);
		}
		return notifTableModel;
	}
	
	@RequestMapping(value = "/getDashboardTemplates", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public TemplateTableModel getTemplates(HttpServletRequest request) {
		TemplateTableModel templateTableModel = null;
		try {
			
			templateTableModel = new TemplateTableModel();
			List<Template> template = new ArrayList<Template>();

			Connection dbConnection = getDbConnection();
			Statement statement = dbConnection.createStatement();
			
			String sql = "SELECT * FROM templates";
			ResultSet resultSet = statement.executeQuery(sql);
			int count = 0;
			
			while(resultSet.next()) {
				template.add(new Template(resultSet.getInt(1), resultSet.getString(2), new Date(), new Date()));
				count++;
			}

			templateTableModel.setTemplates(template);
			templateTableModel.setiTotalDisplayRecords(count);
			templateTableModel.setiTotalRecords(count);
			templateTableModel.setsEcho(request.getParameter(PoLConstants.SECHO));
			templateTableModel.setsColumns(request
					.getParameter(PoLConstants.TOTAL_COLUMNS));

			
		} catch (Exception e) {
			throw new PoLException(e);
		}
		return templateTableModel;
	}
	
	@RequestMapping(value="/configureDashboard", method = RequestMethod.GET)
    public String initForm(Model model) {
        DashboardConfigure dashboardConfigure = new DashboardConfigure();
        
        Map<String, String> widgetsMap = new HashMap<String, String>();
        List<String> checkedVals = new ArrayList<String>();
        
        List<DashboardComponent> listWidgets = getWidgets("");
        Iterator<DashboardComponent> itWidget = listWidgets.iterator();
        
        while(itWidget.hasNext()) {
        	DashboardComponent dashboardComponent = itWidget.next();
        	if(dashboardComponent.getActive().equalsIgnoreCase(PoLConstants.TRUE)) {
        		checkedVals.add(dashboardComponent.getId());
        	}
        	widgetsMap.put(dashboardComponent.getId(), dashboardComponent.getTitle());
        }
        
        dashboardConfigure.setWidgets(checkedVals);
        model.addAttribute("dashboardConfigure", dashboardConfigure);
        model.addAttribute("widgetsMap", widgetsMap);
        
        return "configureDashboard";
    }
 
    @RequestMapping(value="/configureDashboard", method = RequestMethod.POST)
    public String submitForm(Model model, DashboardConfigure dashboardConfigure,
            BindingResult result) {
        //update DB and redirect to dashboard
        try{
        	List<String> selectedWidgets = dashboardConfigure.getWidgets();
        	if(selectedWidgets == null)
        		selectedWidgets = new ArrayList<String>();
        	
        	List<DashboardComponent> listWidgets = getWidgets("");
        	
        	Connection dbConnection = getDbConnection();
	        Statement statement = dbConnection.createStatement();
	        dbConnection.setAutoCommit(false);
	        
	        Iterator<DashboardComponent> itWidget = listWidgets.iterator();	        
	        while(itWidget.hasNext()) {
	        	DashboardComponent dashboardComponent = itWidget.next();
	        	String id = dashboardComponent.getId();
	        	
	        	StringBuilder sql = new StringBuilder();
	        	if(selectedWidgets.contains(id)) {
	        		sql.append("UPDATE dashboard SET active = 'true' ");
	        		sql.append("WHERE id = ").append(id);
	        	}
	        	else {
	        		sql.append("UPDATE dashboard SET active = 'false' ");
	        		sql.append("WHERE id = ").append(id);
	        	}
	        	statement.addBatch(sql.toString());
	        }
	        statement.executeBatch();
			 
			dbConnection.commit();
        }
        catch(Exception e) {
        	e.printStackTrace();
        }
        return "contentAuthor";
    }
    
	private Connection getDbConnection() {
		Connection dbConnection = null;
		try {
			Class.forName(DB_DRIVER);
		} catch (ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}

		try {
			dbConnection = DriverManager.getConnection(DB_CONNECTION, DB_USER,
					DB_PASSWORD);
			return dbConnection;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}

		return dbConnection;
	}
}
