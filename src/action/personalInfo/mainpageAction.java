package action.personalInfo;

import com.opensymphony.xwork2.ActionSupport;
import dao.ApplicationDAO;
import dao.MessageDAO;
import dao.ProfessorDAO;
import dao.StudentDAO;
import entity.*;
import org.apache.struts2.interceptor.SessionAware;

import java.util.ArrayList;
import java.util.Map;

/**
 * Created by Xiangxi on 2016/11/14.
 */
public class mainpageAction extends ActionSupport implements SessionAware{
    protected String graduateSchool;                        // 50 characters at most
    protected String studentNo;                             // 20 characters at most
    protected String emailAddress;                          // 60 characters at most
    protected String awardsCollection;                      // 500 characters at most
    protected double gpa;
    protected double neepScore;
    protected String workingAreas;                          // 60 characters at most
    protected String mobileNo;                              // 30 characters at most
    protected String employerUnit;
    protected String identityCardNo;
    protected String workingArea;
    protected String papersPublished;
    protected int accomodationNumber;
    protected int acceptedNumber;
    protected String fullname;
    protected String major;
    protected String introduction;
    protected String physicalAddress;
    protected String futureMajor1;
    protected String futureMajor2;
    String username = "";
    String userstyle;
    Student mainpageStudent;
    Professor professor;
    int messageNumber;
    int applicationNumber;
    Map session;
    ArrayList<ShortApplication> applications = new ArrayList<>();
    ArrayList<ShortMessage> messages = new ArrayList<>();

    public ArrayList<ShortApplication> getApplications() {
        return applications;
    }

    public void setApplications(ArrayList<ShortApplication> applications) {
        this.applications = applications;
    }

    public ArrayList<ShortMessage> getMessages() {
        return messages;
    }

    public void setMessages(ArrayList<ShortMessage> messages) {
        this.messages = messages;
    }

    public int getMessageNumber() {
        return messageNumber;
    }

    public void setMessageNumber(int messageNumber) {
        this.messageNumber = messageNumber;
    }

    public int getApplicationNumber() {
        return applicationNumber;
    }

    public void setApplicationNumber(int applicationNumber) {
        this.applicationNumber = applicationNumber;
    }

    public String getFutureMajor1() {
        return futureMajor1;
    }

    public void setFutureMajor1(String futureMajor1) {
        this.futureMajor1 = futureMajor1;
    }

    public String getFutureMajor2() {
        return futureMajor2;
    }

    public void setFutureMajor2(String futureMajor2) {
        this.futureMajor2 = futureMajor2;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getPhysicalAddress() {
        return physicalAddress;
    }

    public void setPhysicalAddress(String physicalAddress) {
        this.physicalAddress = physicalAddress;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getEmployerUnit() {
        return employerUnit;
    }

    public void setEmployerUnit(String employerUnit) {
        this.employerUnit = employerUnit;
    }

    public String getIdentityCardNo() {
        return identityCardNo;
    }

    public void setIdentityCardNo(String identityCardNo) {
        this.identityCardNo = identityCardNo;
    }

    public String getWorkingArea() {
        return workingArea;
    }

    public void setWorkingArea(String workingArea) {
        this.workingArea = workingArea;
    }

    public String getPapersPublished() {
        return papersPublished;
    }

    public void setPapersPublished(String papersPublished) {
        this.papersPublished = papersPublished;
    }

    public int getAccomodationNumber() {
        return accomodationNumber;
    }

    public void setAccomodationNumber(int accomodationNumber) {
        this.accomodationNumber = accomodationNumber;
    }

    public int getAcceptedNumber() {
        return acceptedNumber;
    }

    public void setAcceptedNumber(int acceptedNumber) {
        this.acceptedNumber = acceptedNumber;
    }

    public Student getMainpageStudent() {
        return mainpageStudent;
    }

    public String getGraduateSchool() {
        return graduateSchool;
    }

    public void setGraduateSchool(String graduateSchool) {
        this.graduateSchool = graduateSchool;
    }

    public String getStudentNo() {
        return studentNo;
    }

    public void setStudentNo(String studentNo) {
        this.studentNo = studentNo;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public String getAwardsCollection() {
        return awardsCollection;
    }

    public void setAwardsCollection(String awardsCollection) {
        this.awardsCollection = awardsCollection;
    }

    public double getGpa() {
        return gpa;
    }

    public void setGpa(double gpa) {
        this.gpa = gpa;
    }

    public double getNeepScore() {
        return neepScore;
    }

    public void setNeepScore(double neepScore) {
        this.neepScore = neepScore;
    }

    public String getWorkingAreas() {
        return workingAreas;
    }

    public void setWorkingAreas(String workingAreas) {
        this.workingAreas = workingAreas;
    }

    public String getMobileNo() {
        return mobileNo;
    }

    public void setMobileNo(String mobileNo) {
        this.mobileNo = mobileNo;
    }

    public Map getSession() {
        return session;
    }

    public String getUserstyle() {
        return userstyle;
    }

    public void setUserstyle(String userstyle) {
        this.userstyle = userstyle;
    }


    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Student getStudent() {
        return mainpageStudent;
    }

    public void setMainpageStudent(Student mainpageStudent) {
        this.mainpageStudent = mainpageStudent;
    }

    public Professor getProfessor() {
        return professor;
    }

    public void setProfessor(Professor professor) {
        this.professor = professor;
    }

    public void getShortMessagesAndApplications() {
        String user = (String)session.get("username");

        ApplicationDAO applicationDAO = new ApplicationDAO();
        ArrayList<Application> allApplications = applicationDAO.findAllApplicationByUser(user);
        for(Application application : allApplications) {
            if (application.getStatus() == 2) {
                continue;
            }
            if ((application.getTo().equals(user) && application.getStatus() == 0) ||
                    application.getFrom().equals(user) && application.getStatus() == 1) {
                applications.add(new ShortApplication(application, user));
            }
        }

        ArrayList<Message> unreadMessages = new MessageDAO().getMessageListByUserID(user, 0, 1);
        for(Message message : unreadMessages)
            messages.add(new ShortMessage(message));

        messageNumber = messages.size();
        applicationNumber = applications.size();

        session.put("messageNumber", messageNumber);
        session.put("applicationNumber", applicationNumber);
    }

    public void findUserStyle(String username) throws Exception{
        if (new StudentDAO().getStudent(username) != null)
            userstyle = "Student";
        else if(new ProfessorDAO().getProfessor(username) != null)
            userstyle = "Professor";
        else
            throw(new Exception("No such username in both databases"));
    }
    public String execute() {
        if (!session.containsKey("username"))
            return "unlogged";
        getShortMessagesAndApplications();
        if (username.equals("")) {
            username = (String)session.get("username");
            userstyle = (String)session.get("userstyle");
        } else {
            try {
                findUserStyle(username);
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }
        session.put("watchedUsername", username);
        session.put("watchedUserstyle", userstyle);

        if (userstyle.equals("Student")) {
            StudentDAO studentDAO = new StudentDAO();
            mainpageStudent = studentDAO.getStudent(username);
            graduateSchool = mainpageStudent.getGraduateSchool();
            studentNo = mainpageStudent.getStudentNo();
            gpa = mainpageStudent.getGpa();
            neepScore = mainpageStudent.getNeepScore();
            awardsCollection = mainpageStudent.getAwardsCollection();
            emailAddress = mainpageStudent.getEmailAddress();
            workingAreas = mainpageStudent.getWorkingAreas();
            mobileNo = mainpageStudent.getMobileNo();
            fullname = mainpageStudent.getFullname();
            major = mainpageStudent.getMajor();
            introduction = mainpageStudent.getIntroduction();
            physicalAddress = mainpageStudent.getPhysicalAddress();
            futureMajor1 = mainpageStudent.getFutureMajor1();
            futureMajor2 = mainpageStudent.getFutureMajor2();
            return SUCCESS;
        }
        if (userstyle.equals("Professor")) {
            ProfessorDAO professorDAO = new ProfessorDAO();
            professor = professorDAO.getProfessor(username);
            employerUnit = professor.getEmployerUnit();
            identityCardNo = professor.getIdentityCardNo();
            workingArea = professor.getWorkingArea();
            papersPublished = professor.getPapersPublished();
            accomodationNumber = professor.getAccomodationNumber();
            emailAddress = professor.getEmailAddress();
            mobileNo = professor.getMobileNo();
            acceptedNumber = professor.getAcceptedNumber();
            fullname = professor.getFullname();
            major = professor.getMajor();
            introduction = professor.getIntroduction();
            physicalAddress = professor.getPhysicalAddress();
            return SUCCESS;
        }
        return ERROR;
    }
    public void setSession(Map session) {
        this.session = session;
    }
}
