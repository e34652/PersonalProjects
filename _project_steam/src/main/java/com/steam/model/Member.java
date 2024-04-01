package com.steam.model;



import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
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

	long num;
	private String regDate;
	@NonNull private String email;
	@NonNull private String password;
	@NonNull private String nickname;
	@NonNull private Integer authority;
	@NonNull private String nationality;

}
