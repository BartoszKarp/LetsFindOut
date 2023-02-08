package pl.karpiuu.letsfindout.domain.common.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class StatisticsDto {
	private long questions;
	private long answers;
}
