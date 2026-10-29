package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.model.Tasks;
import com.utility.DBConnection;

public class TaskDAO {

	boolean status = false;

	public boolean createTask(Tasks task) {
		String sql = "INSERT INTO tasks (task_name,task_description,story_points,assigned_to) VALUES(?,?,?,?)";
		Connection con = DBConnection.getDBConnection();
		try {
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, task.getTaskName());
			st.setString(2, task.getTaskDescription());
			st.setInt(3, task.getStoryPoints());
			st.setString(4, task.getAssignedTo());
			int n = st.executeUpdate();
			if (n > 0) {
				System.out.println("task created successfully");
				status = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;

	}

	public boolean UpdateTask(Tasks uptask) {
		String sql = "update  tasks set task_name=?,task_description=?,story_points=?,assigned_to=? where task_id=?";
		Connection con = DBConnection.getDBConnection();
		try {
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, uptask.getTaskName());
			st.setString(2, uptask.getTaskDescription());
			st.setInt(3, uptask.getStoryPoints());
			st.setString(4, uptask.getAssignedTo());
			st.setInt(5, uptask.getTaskId());
			int n = st.executeUpdate();
			if (n > 0) {
				System.out.println("task updated successfully");
				status = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;

	}

	public boolean deleteTaskbyId(int taskid) {
		String sql = "delete from tasks where task_id=?";
		Connection con = DBConnection.getDBConnection();
		try {
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, taskid);
			int n = st.executeUpdate();
			if (n > 0) {
				System.out.println("task deleted successfully");
				status = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;

	}

	public Tasks FindTaskById(int taskid) {
		String sql = "select * from tasks where task_id=?";
		Connection con = DBConnection.getDBConnection();
		Tasks task = new Tasks();// default
		try {
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, taskid);
			ResultSet rs = st.executeQuery();
			while (rs.next()) {
				task.setTaskId(rs.getInt("task_id"));
				task.setTaskName(rs.getString("task_name"));
				task.setTaskDescription(rs.getString("task_description"));
				task.setStoryPoints(rs.getInt("story_points"));
				task.setAssignedTo(rs.getString("assigned_to"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return task;
	}

	public List<Tasks> getAllTasks() {
		List<Tasks> list = new ArrayList<>();

		String sql = "select * from tasks";
		Connection con = DBConnection.getDBConnection();

		try {
			PreparedStatement st = con.prepareStatement(sql);

			ResultSet rs = st.executeQuery();
			while (rs.next()) {
				Tasks task = new Tasks();// default
				task.setTaskId(rs.getInt("task_id"));
				task.setTaskName(rs.getString("task_name"));
				task.setTaskDescription(rs.getString("task_description"));
				task.setStoryPoints(rs.getInt("story_points"));
				task.setAssignedTo(rs.getString("assigned_to"));
				list.add(task);
			}
			System.out.println("in Task DAO==========");
			System.out.println(list);

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

}
