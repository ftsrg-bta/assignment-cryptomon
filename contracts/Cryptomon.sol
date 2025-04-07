// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./ICryptomon.sol";


/**
 * @title Combinatorial auction implementation
 * @author Anonymous Student
 * @notice Implementation a sealed-bid combinatorial auction with a value density heuristic
 */
contract Cryptomon is ICryptomon, Ownable {

    constructor(address initialOwner) Ownable(initialOwner) {}
    
    function createMonster(string calldata name) public onlyOwner returns (uint256)
    {
    revert("Not implemented");
    }

    function getMonster(uint256 monsterId) external view returns (
        Monster memory
    ){
        revert("Not implemented");
    }

    function challengeMonster(uint256 myMonsterId, uint256 opponentMonsterId) external returns (uint256)
    {
        revert("Not implemented");
    }


    function acceptChallenge(uint256 battleId) external {
        revert("Not implemented");
    }


    function useMove(uint256 battleId, uint256 moveId) external {
        revert("Not implemented");
    }
    

    function claimBattleReward(uint256 monsterId) external {
        revert("Not implemented");
    }


    function moves(uint256 monsterId) external view returns (string[] memory) {
        revert("Not implemented");
    }


    function createTournament(uint256 maxParticipants, uint256 levelLimit) external returns (uint256){
        revert("Not implemented");
    }


    function joinTournament(uint256 tournamentId, uint256 monsterId) external {
        revert("Not implemented");
    }


    function executeTournamentRound(uint256 tournamentId) external {
        revert("Not implemented");
    }

    function claimTournamentPrize(uint256 tournamentId, uint256 monsterId) external {
        revert("Not implemented");
    }


    // ERC721 functions
    function approve(address to, uint256 tokenId) external override {
        revert("Not implemented");
    }

    function getApproved(uint256 tokenId) external view override returns (address) {
        revert("Not implemented");
    }

    function setApprovalForAll(address operator, bool approved) external override {
        revert("Not implemented");
    }

    function isApprovedForAll(address owner, address operator) external view override returns (bool) {
        revert("Not implemented");
    }

    function transferFrom(address from, address to, uint256 tokenId) external override {
        revert("Not implemented");
    }

    function safeTransferFrom(address from, address to, uint256 tokenId) external override {
        revert("Not implemented");
    }

    function safeTransferFrom(address from, address to, uint256 tokenId, bytes calldata data) external override {
        revert("Not implemented");
    }

    function balanceOf(address owner) external view override returns (uint256) {
        revert("Not implemented");
    }

    function ownerOf(uint256 tokenId) external view override returns (address) {
        revert("Not implemented");
    }

    function supportsInterface(bytes4 interfaceId) external view override returns (bool) {
        revert("Not implemented");
    }
}