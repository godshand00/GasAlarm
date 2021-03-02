import java.util.Date;

public class person {
    private String name;
    private String sex;
    private int age;
    public String remark;
    protected String area;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public person() {
    }

    public person(String name, String sex, int age, String remark, String area, Date birth) {
        this.name = name;
        this.sex = sex;
        this.age = age;
        this.remark = remark;
        this.area = area;
        this.birth = birth;
    }

    protected Date birth;

}
