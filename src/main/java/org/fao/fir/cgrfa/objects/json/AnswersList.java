package org.fao.fir.cgrfa.objects.json;

import java.util.List;
import lombok.Data;

public @Data class AnswersList {
	int survey_id;
	List<Answer> answers;
	Headers headers;
	List<Status> status;
}
