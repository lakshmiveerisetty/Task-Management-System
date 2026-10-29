package com.model;

public class Tasks {

	    private int taskId;
	    private String taskName;
	    private String taskDescription;
	    private int storyPoints;
	    private String assignedTo;

	    // No-Args Constructor
	    public Tasks() {
	    }

	    // All-Args Constructor
	    public Tasks( String taskName, String taskDescription,
	                 int storyPoints, String assignedTo) {
	        this.taskName = taskName;
	        this.taskDescription = taskDescription;
	        this.storyPoints = storyPoints;
	        this.assignedTo = assignedTo;
	    }

	    // Getters and Setters

	    public int getTaskId() {
	        return taskId;
	    }

	    public void setTaskId(int taskId) {
	        this.taskId = taskId;
	    }

	    public String getTaskName() {
	        return taskName;
	    }

	    public void setTaskName(String taskName) {
	        this.taskName = taskName;
	    }

	    public String getTaskDescription() {
	        return taskDescription;
	    }

	    public void setTaskDescription(String taskDescription) {
	        this.taskDescription = taskDescription;
	    }

	    public int getStoryPoints() {
	        return storyPoints;
	    }

	    public void setStoryPoints(int storyPoints) {
	        this.storyPoints = storyPoints;
	    }

	    public String getAssignedTo() {
	        return assignedTo;
	    }

	    public void setAssignedTo(String assignedTo) {
	        this.assignedTo = assignedTo;
	    }

	    // toString()
	    @Override
	    public String toString() {
	        return "Tasks [taskId=" + taskId +
	                ", taskName=" + taskName +
	                ", taskDescription=" + taskDescription +
	                ", storyPoints=" + storyPoints +
	                ", assignedTo=" + assignedTo + "]";
	    }
	
}
