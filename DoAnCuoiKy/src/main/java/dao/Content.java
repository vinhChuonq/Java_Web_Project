package dao;

public class Content {
	private int id;
	private String title;
	private String brief;
	private String content;
	private String createddate;
	private String updatetime;
	private String sort;
	private int authorid;

	public Content() {
	}

	public Content(int id, String title, String brief, String content, String createddate, String updatetime,
			String sort, int authorid) {
		super();
		this.id = id;
		this.title = title;
		this.brief = brief;
		this.content = content;
		this.createddate = createddate;
		this.updatetime = updatetime;
		this.sort = sort;
		this.authorid = authorid;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getBrief() {
		return brief;
	}

	public void setBrief(String brief) {
		this.brief = brief;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCreateddate() {
		return createddate;
	}

	public void setCreateddate(String createddate) {
		this.createddate = createddate;
	}

	public String getUpdatetime() {
		return updatetime;
	}

	public void setUpdatetime(String updatetime) {
		this.updatetime = updatetime;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public int getAuthorid() {
		return authorid;
	}

	public void setAuthorid(int authorid) {
		this.authorid = authorid;
	}

	@Override
	public String toString() {
		return "Content [id=" + id + ", title=" + title + ", brief=" + brief + ", content=" + content + ", createddate="
				+ createddate + ", updatetime=" + updatetime + ", sort=" + sort + ", authorid=" + authorid + "]";
	}

}
