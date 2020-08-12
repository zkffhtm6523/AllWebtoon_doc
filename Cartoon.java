import java.util.ArrayList;

 

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

 

@JsonIgnoreProperties(ignoreUnknown = true)

public class Cartoon {

	private String img;					//썸네일

	private String title;

	private ArrayList<String> writer = new ArrayList<String>();

	private String story;

	private ArrayList<String> genre = new ArrayList<String>();

	private String link;				//작품 상세페이지 링크

//	private String day;       //회차정보(보류)

	

	public String getImg() {

		return img;

	}

	public void setImg(String img) {

		this.img = img;

	}

	public String getTitle() {

		return title;

	}

	public void setTitle(String title) {

		this.title = title;

	}

	public ArrayList<String> getWriter() {

		return writer;

	}

	public void setWriter(String wri_story) {

		this.writer.add(wri_story);

	}

	public String getStory() {

		return story;

	}

	public void setStory(String story) {

		this.story = story;

	}

	public ArrayList<String> getGenre() {

		return genre;

	}

	public void setGenre(String genre) {

		(this.genre).add(genre);

	}

	public String getLink() {

		return link;

	}

	public void setLink(String link) {

		this.link = link;

	}

/*	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}*/

	

}
