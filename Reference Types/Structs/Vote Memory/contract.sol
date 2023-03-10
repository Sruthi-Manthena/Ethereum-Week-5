// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
pragma experimental ABIEncoderV2;

contract Contract {
	enum Choices { Yes, No }

	struct Vote {
		Choices choice;
		address voter;
	}
	
	function createVote(Choices _choices) external view returns(Vote memory){
		return  Vote(_choices,msg.sender);
	}
}