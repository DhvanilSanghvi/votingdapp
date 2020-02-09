pragma solidity ^0.5.16;

contract Election{

	struct Candidate {
		uint id;
		string name;
		uint voteCount;
	}

	mapping (uint => Candidate) public candidates;
	
	uint public candiatesCount;
	//since Solidity returns an empty object if 
	//you ask for an uninitialized key.

	constructor() public {
		addCandidate("Candidate 1");
		addCandidate("Candidate 2");
	}

	function addCandidate (string memory _name) private{
		candiatesCount ++;
		//Not an array, dont worry about indexes
		//candidatesCount represents ID or key for the mapping
		candidates[candiatesCount] = Candidate(candiatesCount, _name, 0);
	}

}