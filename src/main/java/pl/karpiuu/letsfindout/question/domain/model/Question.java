package pl.karpiuu.letsfindout.question.domain.model;

import javax.persistence.*;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import pl.karpiuu.letsfindout.category.domain.model.Category;

import java.util.*;

@Entity
@Table(name = "questions")
@Getter
@Setter
@ToString
public class Question {

	@Id
	private UUID id;

	private String name;

	@ManyToOne
	private Category category;

	@OneToMany(mappedBy = "question")
	private Set<Answer> answers;

	public Question() {
		this.id = UUID.randomUUID();
	}

	public Question addAnswer(Answer answer){
		if(answers == null){
			answers = new LinkedHashSet<>();
		}

		answer.setQuestion(this);
		answers.add(answer);
		return this;
	}

	public Category getCategory() {
		return category;
	}

	public Question(String name) {
		this();
		this.name = name;
	}
}
