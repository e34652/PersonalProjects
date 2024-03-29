package com.steam.model;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Builder
@AllArgsConstructor
@RequiredArgsConstructor
public class Member {

	long memberNum;
	@NonNull private String memberEmail;
	@NonNull private String memberPassword;
	@NonNull private String memberNickname;
	@NonNull private Integer memberAuthority;
	@NonNull private String memberNationality;

}
